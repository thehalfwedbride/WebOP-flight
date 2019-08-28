package com.wipro.frs.service;
import java.util.ArrayList;

import com.wipro.frs.bean.*;
import com.wipro.frs.dao.*;

public class AdminControls 
{
	public boolean addFlight(int flightId,String source, String destination,float duration, int totalSeats, float distance, String arrTime, String depTime, int price) throws Exception
	{
		try {
				int count=0;
				DaoDate dd = new DaoDate();
				DaoFlight df = new DaoFlight();
				FlightBean f = new FlightBean();
				f.setFlightId(flightId);
				f.setTotalSeats(totalSeats);
				f.setArrTime(arrTime);
				f.setDepTime(depTime);
				f.setDistance(distance);
				f.setDuration(duration);
				f.setSource(source);
				f.setDestination(destination);
				f.setPrice(price);
				ArrayList<String> allTables = dd.returnAllDateId();
				allTables.add("flight");
				for(String tableName: allTables)
				{
					if(df.insertFlight(f, tableName)==1)
						count++;
					else
						System.out.println("error @ insertion"+tableName);
					
				}
				if(count==allTables.size())
					return true;
				return false;
				
			}
		catch (Exception e)
		{
			System.out.println("mistake @ adding flights");
			System.out.println(e);
			 return false;
		}
			
		
	}
	
}
