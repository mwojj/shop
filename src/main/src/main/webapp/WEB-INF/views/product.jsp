<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js">
	
</script>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<script src="/webstore/resource/js/controllers.js"></script>
<title>Produkt</title>

</head>
<body>
	<section>
		<div class="jumbotron">
			<div class="container">
				<h1>Produkt</h1>
			</div>
		</div>
	</section>
	<section class="container">
		<div class="row">
			<div class="col-md-5">
				<img
					src="<c:url value="/resources/images/${product.productId}.png"></c:url>"
					alt="image" style="width: 100%" />


				<h3>${product.name}</h3>
				<p>${product.description}</p>
				<p>
					<strong>Kod produktu: </strong><span class="label label-warning">${product.productId}</span>
				</p>
				<p>
					<strong>Producent</strong>: ${product.manufacturer}
				</p>
				<p>
					<strong>Kategoria</strong>: ${product.category}
				</p>
				<p>
					<strong>Dostępna liczba sztuk</strong>:${product.unitsInStock}
				</p>
				<h4>${product.unitPrice}PLN</h4>

				<p>
					<strong>Instrukcja produktu</strong>: <a
						href="<c:url value="/resources/pdf/${product.productId}.pdf"></c:url>">Pobierz
						instrukcję</a>
				</p>

				<a href="<spring:url value="/webstore/products" />" class="btn btndefault">
					<span class="glyphicon-hand-left glyphicon"></span> Wstecz
				</a>
				</p>

				<section class="container" ng-app="cartApp">
					<p ng-controller="cartCtrl">
						<a href="#" class="btn btn-warning btn-large"
							ng-click="addToCart('${product.productId}')"> <span
							class="glyphicon-shopping-cart glyphicon"></span> Zamów teraz
						</a> <a href="<spring:url value="/webstore/cart" />" class="btn btn-default">
							<span class="glyphicon-hand-right glyphicon"></span> Koszyk
						</a>
					</p>
				</section>
			</div>
		</div>
	</section>
</body>
</html>