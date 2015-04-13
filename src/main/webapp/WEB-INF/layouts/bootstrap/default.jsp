<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<spring:url value="/resources/images/favicon.ico" var="favicon" />
<link rel="SHORTCUT ICON" href="${favicon}" />

<title>TipTopChefs.com</title>

<!-- Bootstrap core CSS -->
<spring:url value="/resources/bootstrap/css/bootstrap.min.css"
	var="bootstrap_css" />
<link href="${bootstrap_css}" rel="stylesheet">

<!-- Custom styles for this template -->
<spring:theme code="styleSheet" var="theme_css" />
<spring:url value="/${theme_css}" var="theme_css_url" />
<link href="${theme_css_url}" rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
	<div class="site-wrapper">
		<div class="site-wrapper-inner">
			<div class="cover-container">
				<div class="masthead clearfix">
					<div class="inner">
						<tiles:insertAttribute name="header" />
					</div>
				</div>
				<div class="inner cover">
					<tiles:insertAttribute name="body" />
				</div>
				<div class="mastfoot">
					<div class="inner">
						<tiles:insertAttribute name="footer" ignore="true" />
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Bootstrap core JavaScript
    ================================================== -->
	<spring:url value="/resources/jquery/jquery-1.11.2.min.js"
		var="jquery_js" />
	<spring:url value="/resources/bootstrap-3.3.4/js/bootstrap.min.js"
		var="bootstrap_js_url" />
	<spring:url value="/resources/js/ie10-viewport-bug-workaround.js"
		var="ie10_js_url" />
	<script src="${jquery_js}"></script>
	<script src="${bootstrap_js_url}"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="${ie10_js_url}"></script>
</body>
</html>