<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>Admin</title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="adminpage.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="adminpage.js"></script>
</head>

<body>
    <div id="header" class="header">
        <div id="navbar" class="sticky">
                <div class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                          Profile
                        </a>
                        <div class="dropdown-menu">
                          <a class="dropdown-item" href="#" style="color:#000;font-size: 14px;">Change Password</a>
                          <a class="dropdown-item" href="#" style="color:#000;font-size: 14px;">Logout</a>
                        </div>
                </div>
            <a href="adminpage3.jsp">Passenger Details</a>
            <a href="adminpage2.jsp">Route Details</a>
            <a href="#" class="active">Flight Details</a>
            <img src="https://raw.githubusercontent.com/thehalfwedbride/Flight-WeBOP/master/PicsArt_08-18-10.22.33.png"
                height="40px" width="40px">
        </div>
    </div>

    <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2><b>Flight Details</b></h2>
                        </div>
                        <div class="col-sm-6">
                            <a href="#addEmployeeModal" class="btn btn-success" data-toggle="modal"><span>Add Flight</span></a>				
                        </div>
                    </div>
                </div>
                <table class="table table-striped table-hover" id="flightTable">
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Seating<br>Capacity</th>
                            <th>Reservation<br>Capacity</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr onclick="getRow(this)">
                            <td>6E123</td>
                            <td>280</td>
                            <td>200</td>
                            <td>
                                <a href="#editEmployeeModal" class="edit" onclick="defaultFlight(this.parentNode.parentNode)"  data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                                <a href="#deleteEmployeeModal" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <!-- Edit Modal HTML -->
        <div id="addEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                        <div class="modal-header">						
                                <h4 class="modal-title">Add Flight</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            </div>
                    <form id="addFlight">
                        <div class="modal-body">					
                            <div class="form-group">
                                <label>Name</label>
                                <input type="text" class="form-control" name="flightName" required>
                            </div>
                            <div class="form-group">
                                <label>Seating Capacity</label>
                                <input type="number" class="form-control" name="seatingCapacity" required>
                            </div>
                            <div class="form-group">
                                <label>Reservation Capacity</label>
                                <input type="number" class="form-control" name="reservationCapacity" required>
                            </div>				
                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-info" data-dismiss="modal" value="Cancel">
                            <input type="button" class="btn btn-success" onclick="return addFlightRow()" value="Add">
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- Edit Modal HTML -->
        <div id="editEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form id="editFlight">
                        <div class="modal-header">						
                            <h4 class="modal-title">Edit Flight</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">					
                            <div class="form-group">
                                <label>Name</label>
                                <input type="text"  name="flightName" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Seating Capacity</label>
                                <input type="number"  name="seatingCapacity" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Reservation Capacity</label>
                                <input type="number"  name="reservationCapacity" class="form-control" required>
                            </div>				
                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-info" data-dismiss="modal" value="Cancel">
                            <input type="button" class="btn btn-success" onclick="return editFlightRow()" value="Save">
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- Delete Modal HTML -->
        <div id="deleteEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form id="deleteForm">
                        <div class="modal-header">						
                            <h4 class="modal-title">Delete Flight</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">					
                            <p>Are you sure you want to delete these Records?</p>
                            <p class="text-warning"><small>This action cannot be undone.</small></p>
                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-info" data-dismiss="modal" value="Cancel">
                            <input type="button" class="btn btn-danger" data-dismiss="modal" onclick="deleteFlight()" value="Delete">
                        </div>
                    </form>
                </div>
            </div>
        </div>

</body>
</html>