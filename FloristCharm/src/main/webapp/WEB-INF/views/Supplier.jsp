<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SUPPLIER FORM</title>
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
</body>

<body>
<div class="flowers">
<h2>FLORIST CHARM</h2>
</div>

<ul>
   <li><a href="${pageContext.request.contextPath}/index">Home</a></li> 
  <li><a href="${pageContext.request.contextPath}/Category">Category</a></li>
  <li><a href="${pageContext.request.contextPath}/Supplier">Supplier</a></li>
  <li><a href="${pageContext.request.contextPath}/Product">Product</a></li>
  <li><a href="${pageContext.request.contextPath}/Login">Login</a></li>
</ul>
<br>
<br>
<form action="${pageContext.request.contextPath}/addSupplier"method="post">
  <fieldset>
    <legend>SUPPLIER:</legend>
    SUPPLIER ID:<br>
    <input type="text" name="supplierId" >
    <br>
    SUPPLIER NAME:<br>
    <input type="text" name="supplierName">
    <br>
    SUPPLIER EMAIL:<br>
    <input type="text" name="supplierEmail">
    <br>
    SUPPLIER DESCRIPTION:<br>
    <textarea rows="4" cols="50" name="SupplierDes">
    
    </textarea>
    <br>
    <input type="submit" value="Submit">
  </fieldset>
</form>
<br>
<br>
<style>
table, th, td {
    border: 1px solid black;
}
</style>
</head>
<body>

<table style="width:100%">
<%-- <c:forEach items="${catdetail}" var="category" varStatus="status"> --%>
  <tr>
    <th><i>Supplier Id</i></th>
    <th><i>Supplier Name</i></th> 
    <th><i>Supplier Email</i></th>
    <th><i>Supplier Description</i></th>
  </tr>
  <c:forEach items="${supplierList}" var="supplier" varStatus="status">
  <tr>
    <td>${supplier.supplierId}</td>
    <td>${supplier.supplierName}</td>
    <td>${supplier.supplierDes}</td>
    <td>${supplier.supplierEmail}</td>
   <%-- <td class="text-center"><a class='btn btn-warning btn-sm'
						href="getUpdateCat?catId=${category.categoryId}"><span
							class="glyphicon glyphicon-pencil"></span></a></td>
					<td class="text-center"><a
						href="deleteCategory?catId=${category.categoryId}"
						class="btn btn-danger btn-sm"><span
							class="glyphicon glyphicon-remove"></span></a></td> --%>
  </tr>
  </c:forEach>
 
</table>

<%-- <jsp:include page="footer.jsp"></jsp:include> --%>
</body>
</html>
