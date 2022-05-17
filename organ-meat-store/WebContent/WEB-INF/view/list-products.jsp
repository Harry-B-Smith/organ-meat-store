<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page import="com.organmeatstore.util.SortUtils"%>

<!DOCTYPE html>


<html>

<head>
<title>List Products</title>

<!-- reference to our style sheet -->
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css" />

</head>

<body>

	<div id="wrapper">
		<div id="header">
			<h2>Product Inventory</h2>
		</div>
	</div>

	<div id="container">

		<div id="content">

			<!-- put new button: add customer -->

			<input type="button" value="Add Product"
				onclick="window.location.href='showFormForAdd'; return false;"
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

</body>


</html>