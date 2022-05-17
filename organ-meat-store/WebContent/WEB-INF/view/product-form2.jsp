<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html>
<html>

<head>
<title>Save Inventory Item</title>

<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/add-product-style.css">




<body>

	<div id="wrapper">
		<div id="header">
			<h2>Product Inventory Manager</h2>
		</div>
	</div>

	<div id="container">
		<h3>Save Item</h3>

		<form:form action="saveProduct" modelAttribute="product" method="POST">

			<!-- need to associate this data with customer id -->
			<form:hidden path="id" />

			<table>
				<tbody>
					<tr>
						<td><label>Item SKU:</label></td>
						<td><form:input path="sku" /></td>
					</tr>

					<tr>
						<td><label>Item Name:</label></td>
						<td><form:input path="name" /></td>
					</tr>

					<tr>
						<td><label>Item Unit Price:</label></td>
						<td><form:input path="unitPrice" /></td>
					</tr>

					<tr>
						<td><label>Item Category ID:</label></td>
						<td><form:input path="categoryId" /></td>
					</tr>

					<tr>
						<td><label></label></td>
						<td><input type="submit" value="save" class="save" /></td>
					</tr>


				</tbody>
			</table>

		</form:form>

		<div style=""></div>

		<p>
			<a href="${pageContext.request.contextPath}/product/list">Back to
				Inventory List</a>
		</p>

	</div>

</body>

</html>