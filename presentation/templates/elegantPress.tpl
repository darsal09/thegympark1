{load_presentation_object filename="mainFront" assign="obj"}
<!DOCTYPE html>
<head>
	<title>The Gym Park | Home</title>
	<meta charset="utf-8">
	<link rel="stylesheet" href="http://localhost/thegympark/styles/elegant-press.css" type="text/css">
	<link rel="stylesheet" href="http://localhost/thegympark/styles/thegympark.css" type="text/css">
	<script src="http://localhost/thegympark/scripts/elegant-press.js" type="text/javascript"></script>
	<script src="http://localhost/thegympark/scripts/elegant_pressOtherFunctions.js" type="text/javascript"></script>
	<!--[if IE]>
		<link rel="stylesheet" href="styles/elegantStyle.css" type="text/css">
	<![endif]-->
</head>
<body>
	<div class="main-container">
		<header>
			{include file="elegantHeader.tpl"}
		</header>
		
		<div id="nav-container">
			{include file="elegantMenu.tpl"}
		</div>
		<p>&nbsp;</p>	
			{include file=$obj->mContent}
		
		<footer>
			{include file="elegantFooter.tpl"}
		</footer>

		<br />
		<br />
	</div>
</body>
</html>
