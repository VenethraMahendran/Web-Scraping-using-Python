<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    

<html>
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"><%-- <%-- <jsp:include page="header.jsp"></jsp:include>
 --%>
<!-- <div style=width:100%;height:550px>
</div> -->

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
</body>

<body>
<div class="flowers">
<h2>FLORIST CHARM</h2>
</div>
<%-- <a href="${pageContext.request.contextPath}/Category"><i
									class="fa fa-list" aria-hidden="true"></i> Category</a> --%>
<ul>
  <li><a href="Home.jsp">Home</a></li> 
  <%-- <a href="${pageContext.request.contextPath}/Category"><i
									class="fa fa-list" aria-hidden="true"></i> Category</a> --%>
  <li><a href="${pageContext.request.contextPath}/category">Category</a></li>
  <li><a href="${pageContext.request.contextPath}/Supplier">Supplier</a></li>
  <li><a href="${pageContext.request.contextPath}/Product">Product</a></li>
  <li><a href="${pageContext.request.contextPath}/register">Register</a></li>
  <li><a href="${pageContext.request.contextPath}/login">Login</a></li>
</ul>

	<%-- <nav id="navbar-red" class="navbar navbar-default" role="navigation">
	<div class="container-fluid">
		<ul class="nav navbar-nav">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-nav">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
		</ul>
	</div>
	<div class="collapse navbar-collapse" id="bs-example-nav">
		<ul class="nav navbar-nav navbar-left">
			<li><a href="${pageContext.request.contextPath}/index"><img
					src="${pageContext.request.contextPath}/resources/logo.JPG"
					style="width: 100px; height: 40px; margin-top: 0px;"></img></a></li>
			<li><a href="${pageContext.request.contextPath}/index"><i
					class="fa fa-home" aria-hidden="true"></i>Home</a></li>



		</ul>


		<c:if test="${pageContext.request.userPrincipal.name==null}">
			<ul class="nav navbar-nav navbar-left">
				<li><a href="${pageContext.request.contextPath}/prolist"><i
						class="fa fa-list-alt" aria-hidden="true"></i>All Product</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="${pageContext.request.contextPath}/goToLogin"><i
						class="fa fa-sign-in" aria-hidden="true"></i> Log In</a></li>
				<li><a href="${pageContext.request.contextPath}/register"><span
						class="glyphicon glyphicon-user"></span> Sign Up</a></li>

			</ul>
		</c:if>

         <c:if test="${pageContext.request.userPrincipal.name!=null}">
			<security:authorize access="hasRole('ROLE_ADMIN')">
				<ul class="nav navbar-nav navbar-left">
					<div class="dropdown">
						<button class="dropbtnn">
							<i class="fa fa-bars" aria-hidden="true"></i> Admin Control
							<div class="dropdown-content">
								 <a href="${pageContext.request.contextPath}/admin/category"><i
									class="fa fa-list" aria-hidden="true"></i> Category</a> <a
									href="${pageContext.request.contextPath}/admin/supplier"><i
									class="fa fa-users" aria-hidden="true"></i> Supplier </a> <a
									href="${pageContext.request.contextPath}/admin/product"><i
									class="fa fa-product-hunt" aria-hidden="true"></i> Product </a> <a
									href="${pageContext.request.contextPath}/admin/productDetails"><i
									class="fa fa-list" aria-hidden="true"></i> Product List</a> 
							</div>
						</button>
					</div>
				</ul> 
				<ul class="nav navbar-nav navbar-right">
					<div class="dropdown">
						<button class="dropbtn">Welcome:${pageContext.request.userPrincipal.name}</button>
						<div class="dropdown-content">

							<a href="${pageContext.request.contextPath}/logout"><i
								class="fa fa-sign-out" aria-hidden="true"></i> Logout</a>
						</div>
					</div>
				</ul>
			</security:authorize>

			<security:authorize access="hasRole('ROLE_USER')">
				<ul class="nav navbar-nav navbar-left">
					<li><a href="${pageContext.request.contextPath}/user/prolist"><i
							class="fa fa-list-alt" aria-hidden="true"></i>All Product</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<div class="dropdown">
						<button class="dropbtn">Welcome:${pageContext.request.userPrincipal.name}</button>
						<div class="dropdown-content">
							<a href="${pageContext.request.contextPath}/user/goToCart"><i
								class="fa fa-cart-plus" aria-hidden="true"> My Cart </i> </a> <a
								href="${pageContext.request.contextPath}/user/goToOrders"><i
								class="fa fa-cart-plus" aria-hidden="true"> My Orders </i> </a> <a
								href="${pageContext.request.contextPath}/logout"><i
								class="fa fa-sign-out" aria-hidden="true"></i> Logout</a>
						</div>
					</div>
				</ul>


			</security:authorize>
		</c:if>

	</div>

</body> --%>
<div style="margin-top:50px;" class="container">
 <div class="jumbotron">
  <h3 class="text-center"><b>INDIA'S FLORIST CHARM</b></h3>
  <hr>
  <!--  <div id="myCarousel" class="carousel slide" data-ride="carousel">
<ol class="carousel-indicators">
<li data-target="#myCarousel1" data-slide-to="0" class="active"></li>
<li data-target="#myCarousel2" data-slide-to="1"></li>
<li data-target="#myCarousel3" data-slide-to="2"></li>

</ol>
<div class="carousel-inner" align="center">
<div class="item active">
<img class="img-rounded" class="img-responsive center-block"
src="resources/flow1.jpg" style=height:500px;width:100%>
</div>
<div class="item">
<img class="img-rounded" class="img-responsive center-block"
src="resources/flow2.jpg" style=height:500px;width:100%>
</div>
<div class="item">
<img class="img-rounded" class="img-responsive center-block"
src="resources/flow3.jpg" style=height:500px;width:100%>
</div>
</div>
<a class="left carousel-control" href="#myCarousel" data-slide="prev">
<span class="glyphicon glyphicon-chevron-left"></span>
<span class="sr-only">Previous</span>
</a>
<a class="right carousel-control" href="#myCarousel" data-slide="next">
<span class="glyphicon glyphicon-chevron-right"></span>
<span class="sr-only">Next</span>
</a>
</div>
</div>-->
<img src="url(https://www.istockphoto.com/resources/images/PhotoFTLP/img_67920257.jpg)">
<div id="myCarousel" class="carousel slide" data-ride="carousel">
<ol class="carousel-indicators">
<li data-target="#myCarousel1" data-slide-to="0" class="active"></li>
<li data-target="#myCarousel2" data-slide-to="1" class="active"></li>
</ol>
<div class="carousel-inner" align="center">
<div class="item active">
<img class="img-rounded" class="img-responsive center-block"
src="resources/flow1.jpg" style=height:500px;width:100%>
</div>
<div class="item">
<img class="img-rounded" class="img-responsive center-block"
src="resources/flow2.jpg" style=height:500px;width:100%>
</div>
</div>
<a class="left carousel-control" href="#myCarousel" data-slide="prev">
<span class="glyphicon glyphicon-chevron-left"></span>
<span class="sr-only">Previous</span>
</a>
<a class="right carousel-control" href="#myCarousel" data-slide="next">
<span class="glyphicon glyphicon-chevron-right"></span>
<span class="sr-only">Next</span>
</a>
</div>
<h2 class="text-center" style="margin-top:80px;">Testimonial</h2>
<hr>
<div id="myCarousel" class="carousel slide text-center" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
	<h2 class="text-center"><u>Mission </u></h2><br>
    <h4><i>"To Become Market Leader In Providing Energy Efficiency Products<br><span style="font-style:normal;">And Services With Technological Excellence And Offering Customer <br> Delight By Strict Adherence To Commitments"</i></span></h4>
    </div>
    <div class="item">
      <h2 class="text-center"><u>Vision</u><br></h2><h4><span style="font-style:normal;"> <i>"A World Class Engineering  company committed to Integrity. Safety. Innovation,<br> Sustainability, Teamwork, Entrepreneurial approach, Respect, enhancing <br> energy efficiency in industries"</i></span></h4>
    </div>
    <div class="item">
      <h2 class="text-center"><u> Our Values </u></h2><br><h4><span style="font-style:normal;"><i>"Foster Learning, Creativity and Team work Zest for change and Zeal to Excel Ensure<br> speed of Response Maintain an Open and Honest Relationship with all clients
Enhance <br> Loyal Customers base through utmost customer satisfaction Respect for dignity and <br>s Potential of Individuals in our company as well as Customer's place"</i></span></h4>
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" ></span>
    <span class="sr-only">Next</span>
  </a>
</div>
</div>
</div>
</body>
-
</html>