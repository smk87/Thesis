<?php
  session_start();

  if (!isset($_SESSION['username'])) {
  	$_SESSION['msg'] = "You must log in first";
  	header('location: login.php');
  }
  if (isset($_GET['logout'])) {
  	session_destroy();
  	unset($_SESSION['username']);
  	header("location: login.php");
  }
?>
<!DOCTYPE html>
<html>
<head>
	<title>Home</title>
	<!--<link rel="stylesheet" type="text/css" href="a.css">-->

    <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>MIST Billing System</title>
  <!-- Bootstrap core CSS-->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Page level plugin CSS-->
  <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet">

  <style>
* {
    box-sizing: border-box;
}

input[type=text], select, textarea {
    width: 100%;
    padding: 2px;
    border: 1px solid #ccc;
    border-radius: 4px;
    resize: vertical;
}

label {
    padding: 0px 12px 12px 0;
    display: inline-block;
}

input[type=submit] {
    background-color: #4CAF50;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    float: right;
}

input[type=submit]:hover {
    background-color: #45a049;
}

.container {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
}

.col-25 {
    float: left;
    width: 25%;
    margin-top: 6px;
}

.col-75 {
    float: left;
    width: 75%;
    margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
    content: "";
    display: table;
    clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
    .col-25, .col-75, input[type=submit] {
        width: 100%;
        margin-top: 0;
    }
}
</style>
</head>

<body>
<!--<div class="navbar">
  <a href="index.php">Home</a>
  <div class="dropdown">
    <button class="dropbtn">Profile
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="#">Dashboard</a>
      <a href="#">Fees</a>
      <a href="#">Payments</a>
    </div>
  </div>
  <a href="index.php?logout='1'">Logout</a>
</div>-->

     class="fixed-nav sticky-footer bg-dark" id="page-top">
  <!-- Navigation-->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
    <a class="navbar-brand" href="index.php">Welcome</a>

    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Dashboard">
          <a class="nav-link" href="index.php">
            <i class="fa fa-fw fa-dashboard"></i>
            <span class="nav-link-text">Dashboard</span>
          </a>
        </li>


        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Components">
          <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseComponents" data-parent="#exampleAccordion">
            <i class="fa fa-fw fa-wrench"></i>
            <span class="nav-link-text">Bills</span>
          </a>
          <ul class="sidenav-second-level collapse" id="collapseComponents">
            <li>
              <a href="tf.php">Tution Fees</a>
            </li>
            <li>
              <a href="fine.php">Fine</a>
            </li>
              <li>
              <a href="hb.php">Hall Bill</a>
            </li>
              <li>
              <a href="mb.php">Mess Bill</a>
            </li>
              </li>
              <li>
              <a href="oth.php">Other Bill</a>
            </li>
          </ul>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Example Pages">
          <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseExamplePages" data-parent="#exampleAccordion">
            <i class="fa fa-fw fa-file"></i>
            <span class="nav-link-text">Application</span>
          </a>
          <ul class="sidenav-second-level collapse" id="collapseExamplePages">
            <li>
              <a href="sfa.php">Semister Fee Application</a>
            </li>
            <li>
              <a href="hba.php">Hall Bill Application</a>
            </li>
            <li>
              <a href="mba.php">Mess Bill Aplication</a>
            </li>
            <li>
              <a href="otha.php">Other Application</a>
            </li>
          </ul>
        </li>


      <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Link">
          <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapselink" data-parent="#exampleAccordion">
            <i class="fa fa-fw fa-link"></i>
            <span class="nav-link-text">Links</span>
          </a>
          <ul class="sidenav-second-level collapse" id="collapselink">
            <li>
              <a href="https://mist.ac.bd/">MIST</a>
            </li>
            <li>
              <a href="https://ems.mist.ac.bd/">EMS</a>
            </li>
          </ul>
        </li>


      </ul>
      <ul class="navbar-nav sidenav-toggler">
        <li class="nav-item">
          <a class="nav-link text-center" id="sidenavToggler">
            <i class="fa fa-fw fa-angle-left"></i>
          </a>
        </li>
      </ul>
      <ul class="navbar-nav ml-auto">
        <
        <li class="nav-item">
          <form class="form-inline my-2 my-lg-0 mr-lg-2">
            <div class="input-group">
              <input class="form-control" type="text" placeholder="Search for...">
              <span class="input-group-append">
                <button class="btn btn-primary" type="button">
                  <i class="fa fa-search"></i>
                </button>
              </span>
            </div>
          </form>
        </li>
        <li class="nav-item">
          <a href="index.php?logout='1'" style="color: red;">Logout
            <i class="fa fa-fw fa-sign-out"></i></a>
        </li>
      </ul>
    </div>
  </nav>

    <div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs-->
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="#">Dashboard</a>
        </li>
        <li class="breadcrumb-item">Tution Fees</li>
      </ol>
         <!-- logged in user information -->
    <?php  if (isset($_SESSION['username'])) : ?>
    	<p>Welcome <strong><?php echo $_SESSION['name']; ?></strong></p>
    	<p> <a href="index.php?logout='1'" style="color: red;">logout</a> </p>
    <?php endif ?>
      <!-- Contents-->

      <div class="row">
        <?php
        /* Attempt MySQL server connection. Assuming you are running MySQL
        server with default setting (user 'root' with no password) */
        $mysqli = new mysqli("localhost", "root", "", "th");

        // Check connection
        if($mysqli === false){
            die("ERROR: Could not connect. " . $mysqli->connect_error);
        }

        //Printing values
        $tid=$_SESSION['username'];
        $q="SELECT bill_stdid,bill_type,bill_info,bill_amt,bill_duedate,bill_id FROM bill WHERE bill_stdid='$tid' AND bill_type='Tution' AND bill_sts='Not Paid' ";
        $r=mysqli_query($mysqli,$q);
        while($row=mysqli_fetch_array($r)){

          ?>

          <div class="container">
    <form action="getway.php" method="post">
      <div class="row">
        <div class="col-25">
          <label for="fname">Student ID</label>
        </div>
        <div class="col-75">
          <input type="text" id="fname" name="id" value="<?php echo $row['bill_stdid']; ?>">
        </div>
      </div>
      <div class="row">
        <div class="col-25">
          <label for="lname">Bill Type</label>
        </div>
        <div class="col-75">
          <input type="text" id="lname" name="billtype" value="<?php echo $row['bill_type']; ?>">
        </div>
      </div>
      <div class="row">
        <div class="col-25">
          <label for="lname">Bill Info</label>
        </div>
        <div class="col-75">
          <input type="text" id="lname" name="billinfo" value="<?php echo $row['bill_info']; ?>">
        </div>
      </div>
      <div class="row">
        <div class="col-25">
          <label for="lname">Bill Amount</label>
        </div>
        <div class="col-75">
          <input type="text" id="lname" name="billamt" value="<?php echo $row['bill_amt']; ?>">
        </div>
      </div>
      <div class="row">
        <div class="col-25">
          <label for="lname">Due Date</label>
        </div>
        <div class="col-75">
          <input type="date" id="lname" name="duedate" value="<?php echo $row['bill_duedate']; ?>">
        </div>
      </div>

      <input type="hidden" name="bill_id" value="<?php echo $row['bill_id']; ?>">

      <div class="row">
        <input type="submit" value="Pay Now">
      </div>

    </form>
          <?php
        }

        // Close connection
        $mysqli->close();
        ?>

      </div>
        <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
    <!-- Page level plugin JavaScript-->
    <script src="vendor/chart.js/Chart.min.js"></script>
    <script src="vendor/datatables/jquery.dataTables.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.js"></script>
    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin.min.js"></script>
    <!-- Custom scripts for this page-->
    <script src="js/sb-admin-datatables.min.js"></script>
    <script src="js/sb-admin-charts.min.js"></script>





<div class="content">
  	<!-- notification message -->
  	<?php if (isset($_SESSION['success'])) : ?>
      <div class="error success" >
      	<h3>
          <?php
          	echo $_SESSION['success'];
          	unset($_SESSION['success']);
          ?>
      	</h3>
      </div>
  	<?php endif ?>



</div>

</body>
</html>
