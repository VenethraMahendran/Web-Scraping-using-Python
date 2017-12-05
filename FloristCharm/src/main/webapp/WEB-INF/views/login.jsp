<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<style>
.flowers {
    background-color:grey;
    color:white;
    margin:20px;
    padding:20px;
    }

ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333333;
}

li {
    float: left;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 16px;
    text-decoration: none;
}

li a:hover {
    background-color: #111111;
}
</style>



<div class="flowers">
<h2>FLORIST CHARM</h2>
</div>

<ul>
  <li><a href="Home.jsp">Home</a></li>
  <li><a href="Category.jsp">Category</a></li>
  <li><a href="Supplier.jsp">Supplier</a></li>
  <li><a href="Product.jsp">Product</a></li>
  <li><a href="login.jsp">Login</a></li>
</ul>
<!-- Used to open the Modal -->
<button id="login" class="btn" data-toggle="modal" data-target="#myModal">Login</button>

<!-- Modal -->
<div class="modal fade" id="myModal" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h5><span class="glyphicon glyphicon-lock"></span> Login</h5>
      </div>
      <div class="modal-body">
        <form role="form">
          <div class="form-group">
            <label for="usrname"><span class="glyphicon glyphicon-user"></span> Username</label>
            <input type="text" class="form-control" id="usrname" placeholder="Enter email">
          </div>
		  <div class="form-group">
            <label for="psw"><span class="glyphicon glyphicon-lock"></span> Password</label>
            <input type="password" class="form-control" id="psw" placeholder="password">
          </div>
          <button id="buttons" type="submit" class="btn btn-block">Login
            <span class="glyphicon glyphicon-ok"></span>
          </button>
        </form>
      </div>
      <div class="modal-footer">
        <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal">
          <span class="glyphicon glyphicon-remove"></span> Cancel
        </button>
        <p>Need <a href="#">help?</a></p>
      </div>
    </div>
  </div>
</div>
</body>
</html>