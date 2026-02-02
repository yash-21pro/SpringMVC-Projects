<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="./base.jsp"%>
</head>
<body>
	<div class="container mt-3 ">
		<div class="row ms-3 me-3 ">
			<h1 class="text-center mb-3">Change Product Detail</h1>

			<form action="${pageContext.request.contextPath }/handle-product"
				method="post" class="text-center">

				<input type="hidden" name="id" value="${product.id}" />
				<div class="col-md-4 m-auto form-card">
					<div class="form-group  ">
						<label for="name">Product Name</label> <input type="text"
							class="form-control" id="name" aria-describedby="emailHelp"
							name="name" placeholder="Enter the product name here"
							value="${product.name }">
					</div>

					<div class="form-group">
						<label for="description">Product Description</label>
						<textarea rows="5" cols="" class="form-control" id="description"
							aria-describedby="emailHelp" name="description"
							placeholder="Enter the product description here">${product.description}</textarea>
					</div>

					<div class="form-group">
						<label for="name">Product Price</label> <input type="text"
							class="form-control" id="name" name="price"
							placeholder="Enter the product price  here"
							value="${product.price}">
					</div>

					<div class="container text-center">
						<a href="${pageContext.request.contextPath}/"
							class="btn btn-outline-danger mt-3">Back</a>
						<button type="submit" class="btn btn-primary mt-3">Update</button>
					</div>
				</div>

			</form>


		</div>
	</div>
</body>
</html>