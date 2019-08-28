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
            <a href="#" class="active">Passenger Details</a>
            <a href="adminpage2.jsp" >Route Details</a>
            <a href="adminpage1.jsp">Flight Details</a>
            <img src="https://raw.githubusercontent.com/thehalfwedbride/Flight-WeBOP/master/PicsArt_08-18-10.22.33.png"
                height="40px" width="40px">
        </div>
    </div>

    <div class = "passenger">
    <div class="container">
        <div class="row">
            <div class="col-4"></div>    
            <div class="col-4">
                <input type="text" id="myInput" onkeyup="search()" placeholder="Search for names..">
            </div>
            <div class="col-4"></div>    
        </div>
            
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2><b>Passenger Details</b></h2>
                        </div>
                    </div>
                </div>
                <table class="table table-striped table-hover" id="passengerTable">
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Age</th>
                            <th>Gender</th>
                            <th>Flight Name</th>
                            <th>Seat Number</th>
                            <th>Booking Date</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr onclick="getRow(this)">
                            <td>Rahul</td>
                            <td>22</td>
                            <td>Male</td>
                            <td>6E123</td>
                            <td>20A</td>
                            <td>13/08/2019</td>
                        </tr>
                        <tr onclick="getRow(this)">
                                <td>Anita</td>
                                <td>26</td>
                                <td>Female</td>
                                <td>6E356</td>
                                <td>30B</td>
                                <td>10/06/2019</td>
                        </tr>
                        <tr onclick="getRow(this)">
                                <td>Anil</td>
                                <td>30</td>
                                <td>Male</td>
                                <td>6E658</td>
                                <td>19D</td>
                                <td>06/07/2019</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>
</html>