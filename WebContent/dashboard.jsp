<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="lib/css/bootstrap.min.css">
<link rel="stylesheet" href="lib/css/font-awesome.min.css">
<link rel="stylesheet" href="lib/css/style.css">
<link rel="stylesheet" href="lib/css/qstyletop.css">
<script type="text/javascript" src="lib/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="lib/js/bootstrap.min.js"></script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<!-- Middle Start  -->
<div class="container">
    <h2>Dashboard</h2>
    <hr />
    <div class="clearfix"></div>
    <div class="main-boxes">
        <ul>
            <li class="col-sm-3">
                <a class="" href="storeprofile.jsp">
                    <span class="icon-block">
                        <i class="glyphicon glyphicon-user"></i>
                    </span>
                    <strong>
                        <span>My Profile</span>
                    </strong>
                </a>
            </li>

            <li class="col-sm-3">
                <a class="" href="vendor.jsp">
                    <span class="icon-block">
                        <i class="fa fa-tags"></i>
                    </span>
                    <strong>
                        <span>Vendor Setup</span>
                    </strong>
                </a>
            </li>

            <li class="col-sm-3">
                <a class="" href="companysetting.jsp">
                    <span class="icon-block">
                        <i class="fa fa-sun-o"></i>
                    </span>
                    <strong>
                        <span>Company Setup</span>
                    </strong>
                </a>
            </li>

            <li class="col-sm-3">
                <a class="" href="mis.jsp">
                    <span class="icon-block">
                        <i class="glyphicon glyphicon-user"></i>
                    </span>
                    <strong>
                        <span>MIS</span>
                    </strong>
                </a>
            </li>
            <li class="col-sm-3">
                <a class="" href="addstock.jsp">
                    <span class="icon-block">
                        <i class="fa fa-male"></i>
                    </span>
                    <strong>
                        <span>Add Stock</span>
                    </strong>
                </a>
            </li>
            <li class="col-sm-3">
                <a class="" href="billing.jsp">
                    <span class="icon-block">
                        <i class="fa fa-file-text-o"></i>
                    </span>
                    <strong>
                        <span>Billing</span>
                    </strong>
                </a>
            </li>
            <li class="col-sm-3">
                <a class="" href="garbage.jsp">
                    <span class="icon-block">
                        <i class="fa fa-file"></i>
                    </span>
                    <strong>
                        <span>Garbage</span>
                    </strong>
                </a>
            </li>
            <li class="col-sm-3">
                <a class="" href="salesreport.jsp">
                    <span class="icon-block">
                        <i class="fa fa-check"></i>
                    </span>
                    <strong>
                        <span>Sales History</span>
                    </strong>
                </a>
            </li>

            <li class="col-sm-3">
                <a class="" href="garbagereport.jsp">
                    <span class="icon-block">
                        <i class="fa fa-file-o"></i>
                    </span>
                    <strong>
                        <span>Garbage Report</span>
                    </strong>
                </a>
            </li>

            <li class="col-sm-3">
                <a class="" href="changepwd.jsp">
                    <span class="icon-block">
                        <i class="fa fa-key"></i>
                    </span>
                    <strong>
                        <span>Change Password</span>
                    </strong>
                </a>
            </li>

            <li class="col-sm-3">
                <a class="" href="logout.jsp">
                    <span class="icon-block">
                        <i class="fa fa-sign-out"></i>
                    </span>
                    <strong>
                        <span>Logout</span>
                    </strong>
                </a>
            </li>
        </ul>
    </div>
    <div class="clearfix"></div>
    <hr />
    
</div>


    </div>
<!-- Middle End  -->
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>