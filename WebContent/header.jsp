    <%@page import="bean.User"%>
<header>
<div class="header">
    <div class="container">
  <div class="row">
      <div class="col-md-3">
          <div class="companyname"><h2><a href="dashboard.jsp">StoreERP</a></h2></div>
      </div>
      <div class="col-md-6">
          <h3>Welcome <%User user = (User)session.getAttribute("user");%>
          <%=user.getStoreName() %></h3>
      </div>
      <div class="col-md-3">
      <a href="logout.jsp" class="btn btn-primary">Logout</a>
    </div>
</div>
    </div>
        </div>
    
<div class="menu">
<div class="container">
<div class="row">
<div class="col-md-3"></div>    
<div class="col-md-9">
   <nav class="navbar navbar-default navbar-right">
            <div class="container-fluid">
                <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#top-bar-collapse" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <div class="collapse navbar-collapse" id="top-bar-collapse">
                <ul class="nav navbar-nav">
                    <li>
            <div class="dropdown">
      <a class="btn dropdown-toggle" type="button" id="dropdownMenulink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
        Store Profile<span class="caret"></span>
      </a>
      <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
          <li><a  href="storeprofile.jsp">Profile Setup</a></li>
      </ul>
    </div>
  </li>                     
                    <li>
            <div class="dropdown">
      <a class=" btn dropdown-toggle" type="button" id="dropdownMenulink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
        Store Setup <span class="caret"></span>
      </a>
      <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
       <li><a href="accessories.jsp">Accessories Setup</a></li>
          <li><a  href="companysetting.jsp">Company Setup</a></li>
          <li><a href="modelsetting.jsp">Model Setup</a></li>
         <li><a  href="vendor.jsp">Vendor Setup</a></li>
      </ul>
    </div>
  </li>        
                    <li>
            <div class="dropdown">
      <a class="btn dropdown-toggle" type="button" id="dropdownMenulink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
        Stock <span class="caret"></span>
      </a>
      <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
          <li><a  href="mis.jsp">MIS</a></li>
         <li><a  href="addstock.jsp">Add Stock</a></li>
      </ul>
    </div>
  </li>
                    <li>
            <div class="dropdown">
      <a class="btn dropdown-toggle" type="button" id="dropdownMenulink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
        Billing <span class="caret"></span>
      </a>
      <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
          <li><a  href="billing.jsp">Billing</a></li>
      </ul>
    </div>
  </li>
                    <li>
            <div class="dropdown">
      <a class="btn dropdown-toggle" type="button" id="dropdownMenulink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
        Garbage <span class="caret"></span>
      </a>
      <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
          <li><a  href="garbage.jsp">Garbage Item</a></li>
      </ul>
    </div>
  </li>
                    <li>
            <div class="dropdown">
      <a class="btn dropdown-toggle" type="button" id="dropdownMenulink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
        Reports <span class="caret"></span>
      </a>
      <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
          <li><a  href="salesreport.jsp">Sales</a></li>
         <li><a  href="garbagereport.jsp">Garbage</a></li>
      </ul>
    </div>
  </li>
                </ul>
            </div>
            </div>
        </nav>
</div>        
            </div>       
</div>        
</div>
 
</header>