<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page import="com.organmeatstore.util.SortUtils"%>

<!DOCTYPE html>


<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home | OrganMeatStore</title>
    <link rel="stylesheet" href="style.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css" />
</head>
<body>

<div class="header">


<div class="container">
    <div class="navbar">
        <div class="logo">
            <a href="${pageContext.request.contextPath}/product/home"><img src="${pageContext.request.contextPath}/resources/img/logo2.png" width="200px"></a> 
        </div>
        <nav>
            <ul id="MenuItems">
                <li><a href="${pageContext.request.contextPath}/product/home">Home</a></li>
                <li><a href="${pageContext.request.contextPath}/product/productpage">Meats</a></li>
                <li><a href="${pageContext.request.contextPath}/product/about">About Us</a></li>
                <li><a href="${pageContext.request.contextPath}/product/contact">Contact</a></li>
                <li><a href="${pageContext.request.contextPath}/product/list">Admin Login</a></li>
                <li><a href="${pageContext.request.contextPath}/product/account">Account</a></li>
            </ul>
        </nav>
        <a href="${pageContext.request.contextPath}/product/cart"><img src="${pageContext.request.contextPath}/resources/img/cart.png" width="30px" height="30px"></a>
        <img src="${pageContext.request.contextPath}/resources/img/menu.png" class="menu-icon" onclick="menuToggle()">
    </div>    
    <div class="row">
        <div class="col-2">
            <h1>You've logged in successfully.<br></h1>
            <p>You can make changes to the inventory below. Authorized personnel only.</p>
            
        </div>
        <div class="col-2">
            <img src="${pageContext.request.contextPath}/resources/img/Black Minimalist Bull Head Logo Template.png">
        </div>
    </div>
</div>
</div>
<!------ featured categories ------>
  
<!------ featured products ------>
    
   <div id="wrapper">
		<div id="header">
			<h2>Product Inventory</h2>
		</div>
	</div>

	<div id="container">

		<div id="content">

			<!-- put new button: add customer -->

			<input type="button" value="Add Product"
				onclick="window.location.href='showFormForAddTest'; return false;"
				class="add-button" />

			<!--  add a search box -->
			<form:form action="search" method="GET">
                Search products: <input type="text" name="theSearchName" />

				<input type="submit" value="Search" class="add-button" />
			</form:form>

			<!-- construct a sort link for SKU -->
			<c:url var="sortLinkSKU" value="/product/list">
				<c:param name="sort" value="<%=Integer.toString(SortUtils.SKU)%>" />
			</c:url>

			<!-- construct a sort link for name -->
			<c:url var="sortLinkName" value="/product/list">
				<c:param name="sort" value="<%=Integer.toString(SortUtils.NAME)%>" />
			</c:url>


			<!-- construct a sort link for unit price -->
			<c:url var="sortLinkUnitPrice" value="/product/list">
				<c:param name="sort"
					value="<%=Integer.toString(SortUtils.UNIT_PRICE)%>" />
			</c:url>


			<!-- Add our html table here -->
			<table>

				<tr>
					<th><a href="${sortLinkSKU}">SKU</a></th>
					<th><a href="${sortLinkName}">Product Name</a></th>
					<th><a href="${sortLinkUnitPrice}">Unit Price</a></th>
					<th>Action</th>
				</tr>


				<!-- Loop over and print our product list -->
				<c:forEach var="tempProduct" items="${products}">

					<!-- construct an "update" link with product id -->
					<c:url var="updateLink" value="/product/showFormForUpdate">
						<c:param name="productId" value="${tempProduct.id}" />
					</c:url>

					<!-- construct an "delete" link with product id -->
					<c:url var="deleteLink" value="/product/delete">
						<c:param name="productId" value="${tempProduct.id}" />
					</c:url>

					<tr>
						<td>${tempProduct.sku}</td>
						<td>${tempProduct.name}</td>
						<td>${tempProduct.unitPrice}</td>


						<td>
							<!-- display the update link --> <a href="${updateLink}">Update</a>
							| <a href="${deleteLink}"
							onclick="if (!(confirm('Are you sure you want to delete this product?'))) return false">Delete</a>
						</td>

					</tr>

				</c:forEach>

			</table>


		</div>
		<p>
			<a href="${pageContext.request.contextPath}/product/list">Get Entire Inventory List</a>
		</p>
	</div> 
    
    
<!------ featured products ------>

<!------ footer ------>
<div class="footer">
    <div class="container">
        <div class="row">
            <div class="footer-col-1">
                <h3>Download Our App</h3>
                <p>Download App for Android and iOS mobile phones</p>
                <div class="app-logo">
                    <img src="${pageContext.request.contextPath}/resources/img/play-store.png">
                    <img src="${pageContext.request.contextPath}/resources/img/app-store.png">
                </div>
            </div>
            <div class="footer-col-2">
                <img src="${pageContext.request.contextPath}/resources/img/logo2.png">
                <p>Our Purpose Is To Sustainably Bring Nutrition and Wellness To Everyone</p>
            </div>
            <div class="footer-col-3">
                <h3>Useful Links</h3>
                <ul>
                    <li>Coupons</li>
                    <li>Blog Post</li>
                    <li>Return Policy</li>
                    <li>Join Affiliate</li>
                </ul>
            </div>
            <div class="footer-col-4">
                <h3>Follow Us</h3>
                <ul>
                    <li>Facebook</li>
                    <li>Twitter</li>
                    <li>Instagram</li>
                    <li>YouTube</li>
                </ul>
            </div>
        </div>
        <hr>
        <p class="copyright">Copyright 2022 - The Organ Meat Store</p>
    </div>
</div>
<!------ js for toggle menu ------>
<script>
    var MenuItems = document.getElementById("MenuItems");

    MenuItems.style.maxHeight = "0px";

    function menuToggle(){
        if(MenuItems.style.maxHeight == "0px"){
        MenuItems.style.maxHeight = "200px";
        }
        else {
        MenuItems.style.maxHeight = "0px";
        }
    }
 </script>

</body>
</html>