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
<form action="${pageContext.request.contextPath}/addProduct"enctype="multipart/form-data" accept="image/gif, image/jpeg"method="post">
  <fieldset>
    <legend>PRODUCT:</legend>
    PRODUCT ID:<br>
    <input type="text" name="productId" >
    <br>
    PRODUCT NAME:<br>
    <input type="text" name="productName">
    <br>
    <!-- SUPPLIER EMAIL:<br>
    <input type="text" name="supplierEmail">
    <br> -->
    <!-- PRODUCT DESCRIPTION:<br>
    <textarea rows="4" cols="50" name="ProductDes">
    
    </textarea> -->
    <!-- PRODUCT EMAIL:<br>
    <input type="text" name="productEmail" >
    <br> -->
    CATEGORY ID:<br>
    <input type="text" name="CategoryId" >
    <br>
    CATEGORY NAME:<br>
    <input type="text" name="CategoryName" >
    <br>
    <!-- PRODUCT ID:<br>
    <input type="text" name="productId" >
    <br> -->
    PRICE:<br>
    <input type="text" name="price">
    <br>
    STOCK:<br>
    <input type="text" name="stock">
    <br>
    SUPPLIER ID:<br>
    <input type="text" name="supplierId">
    <br>
    SUPPLIER NAME:<br>
    <input type="text" name="supplierName">
    <br>
    <br>
    <br>
    Your image: <input type="file" name="pic" id="pic"><br>
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
    <th><i>Product Id</i></th>
    <th><i>Product Name</i></th> 
    <!-- <th><i>Product Email</i></th> -->
    <th><i>Category Id</i></th>
    <th><i>Category Name</i></th>
    <th><i>Price</i></th>
    <!-- <th><i>Product Name</i></th> -->
    <th><i>Stock</i></th>
    <th><i>Supplier Id</i></th>
    <th><i>Supplier Name</i></th>
  </tr>
  <c:forEach items="${productList}" var="product" varStatus="status">
  <tr>
    <td>${product.productId}</td>
    <td>${product.productName}</td>
     <td>${product.productDes}</td> 
    <%-- <td>${product.productEmail}</td> --%>
    <td>${category.catId}</td>
    <td>${category.catName}</td>
    <td>${product.price}</td>
    <%-- <td>${product.productName}</td> --%>
    <td>${supplier.supplierId}</td>
    <td>${supplier.supplierName}</td>
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

</body>
</html>