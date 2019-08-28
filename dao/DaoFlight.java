package com.wipro.frs.dao;
import com.wipro.frs.util.*;
import com.wipro.frs.bean.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Date;

public class DaoFlight 
{
	public void createTable(String tableName) throws Exception
	{
		try 
		{
			DBUtil db= new DBUtil();
			Connection conn = db.connectDatabase();
			String sql= "create table $xy as select * from flight";
			String sqlQuery= sql.replace("$xy",tableName);
			PreparedStatement psmnt= conn.prepareStatement(sqlQuery);
			if(!psmnt.execute())
				System.out.println("table created for "+tableName);
			else
				System.out.println("error in creation");
			
		}
		catch (Exception e)
		{
			System.out.println(e);
		}
	}
	public int updateTable (FlightBean f , String tableName, int bookings) throws Exception
		{
			try
			{
				System.out.println(tableName);
				DBUtil db= new DBUtil();
				Connection conn = db.connectDatabase();
				String sql="update $tablename set total_seats= total_seats-? where flight_id=?";
				String sqlQuery=sql.replace("$tablename",tableName);
				PreparedStatement psmnt = conn.prepareStatement(sqlQuery);
				psmnt.setInt(1, bookings);
				psmnt.setInt(2, f.getFlightId());
		
				return psmnt.executeUpdate();
				
			}
			catch(Exception e)
			{
				System.out.println(e);
				return 0;
				
			}
			 
		
		}
	
	public ArrayList searchFlight(FlightBean f, String tableName) throws Exception
	{
		
		try
		{
			
			ArrayList<FlightDetailBean> list= new ArrayList<FlightDetailBean>();
			DBUtil db= new DBUtil();
			Connection conn = db.connectDatabase();
			String sql="select * from $xy where from_location=? and to_location=?";
			String sqlQuery= sql.replace("$xy", tableName);
			PreparedStatement psmnt = conn.prepareStatement(sqlQuery);
			PreparedStatement psmnt1= conn.prepareStatement(sqlQuery);
			psmnt.setString(1, f.getSource());
			psmnt.setString(2, f.getDestination());
			ResultSet rs = psmnt.executeQuery();
			if(rs.next())
			{
				psmnt1.setString(1, f.getSource());
				psmnt1.setString(2, f.getDestination());
				ResultSet rse = psmnt1.executeQuery();
				
				
				while(rse.next())
				{
						FlightDetailBean fb = new FlightDetailBean();
						fb.setFlightId(rse.getInt(1));
						fb.setSource(rse.getString(2));
						fb.setDestination(rse.getString(3));
						fb.setPrice(rse.getInt(9));
						fb.setArrTime(rse.getString(8));
						fb.setDepTime(rse.getString(7));
						list.add(fb);		
				}
				return list;
				
			}
			else
				System.out.println("No flights available for that date");
				return null;
			
		}
		catch (Exception e)
		{
			System.out.println(e);
			return null;
		}
		
	}
	
	public int returnPrice(FlightBean f) throws Exception
	{
		try
		{
			DBUtil db= new DBUtil();
			Connection conn = db.connectDatabase();
			String sql="select price from flight where flight_id=?";
			PreparedStatement psmnt= conn.prepareStatement(sql);
			psmnt.setInt(1, f.getFlightId());
			ResultSet rs =psmnt.executeQuery();
			if(rs.next())
			{
				return rs.getInt(1);
			}
			else
				return 0;
			
			
			
			
		}
		catch (Exception e)
		{
			System.out.println("error @ returnPrice");
			return 0;
		}
	}
		
		public int increaseSeats(FlightBean f, String tableName, int bookings) throws Exception
		{
			try
			{
				DBUtil db= new DBUtil();
				Connection conn = db.connectDatabase();
				String sql="update $tablename set total_seats= total_seats+? where flight_id=?";
				String sqlQuery=sql.replace("$tablename",tableName);
				PreparedStatement psmnt = conn.prepareStatement(sqlQuery);
				psmnt.setInt(1, bookings);
				psmnt.setInt(2, f.getFlightId());
		
				return psmnt.executeUpdate();
				
			}
			catch(Exception e)
			{
				System.out.println(e);
				return 0;
				
			}
			 
		}
		
		public int insertFlight(FlightBean f, String tableName) throws Exception
		{
			try 
			{
				DBUtil db= new DBUtil();
				Connection conn = db.connectDatabase();
				String sql ="insert into $table values(?,?,?,?,?,?,?,?,?)";
				String sqlQuery = sql.replace("$table", tableName);
				PreparedStatement ptsmnt = conn.prepareStatement(sqlQuery);
				ptsmnt.setInt(1, f.getFlightId());
				ptsmnt.setString(2, f.getSource());
				ptsmnt.setString(3, f.getDestination());
				ptsmnt.setFloat(4,f.getDuration());
				ptsmnt.setInt(5,f.getTotalSeats());
				ptsmnt.setFloat(6,f.getDistance());
				ptsmnt.setString(7,f.getDepTime());
				ptsmnt.setString(8, f.getArrTime());
				ptsmnt.setInt(9,f.getPrice());
				return ptsmnt.executeUpdate();
				
						
			}
			catch (Exception e)
			{
				System.out.println("mistake @ insertFlight @ daoflight");
				System.out.println(e);
				return 0;
			}
			
		}
}
		

	

