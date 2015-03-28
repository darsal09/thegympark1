{load_presentation_object filename="mainFront" assign="obj"}

<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <title>The Gym Park - Gymnastics inspired play</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,400">
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Droid+Sans">
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Lobster">
        <link rel="stylesheet" href="http://localhost/thegympark/styles/andia/bootstrap.min.css">
        <link rel="stylesheet" href="http://localhost/thegympark/styles/andia/prettyPhoto.css">
        <link rel="stylesheet" href="http://localhost/thegympark/styles/andia/flexslider.css">
        <link rel="stylesheet" href="http://localhost/thegympark/styles/andia/font-awesome.css">
        <link rel="stylesheet" href="http://localhost/thegympark/styles/andia/styleCopy.css">

        <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
            <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->

        <!-- Favicon and touch icons -->
        <link rel="shortcut icon" href="http://localhost/thegympark/templates/adnia/andia/assets/ico/favicon.ico">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="http://localhost/thegympark/templates/andia/andia/assets/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="http://localhost/thegympark/templates/andia/andia/assets/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="http://localhost/thegympark/templates/andia/andia/assets/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="http://localhost/thegympark/images/andia/ico/apple-touch-icon-57-precomposed.png">
<style>
@media only screen and (max-width: 760px), (min-device-width: 768px) and (max-device-width: 1024px)  
{

	/* Force table to not be like tables anymore */
	table, thead, tbody, th, td, tr 
	{ 
		display: block; 
	}
	
	/* Hide table headers (but not display: none;, for accessibility) */
	thead tr 
	{ 
		position: absolute;
		top: -9999px;
		left: -9999px;
		padding:10px;
	}
	
	tr { border: 1px solid #ccc; }
	
	td { 
		/* Behave  like a "row" */
		border: none;
		border-bottom: 1px solid #eee; 
		position: relative;
		padding:10px;
		padding-left: 40%; 
		color:white;
	}
	
	td A
	{
		color:white;
		font-weight:bold;
		text-decoration:none;
	}
	
	td:before 
	{ 
		/* Now like a table header */
		position: absolute;
		/* Top/left values mimic padding */
		top: 6px;
		left: 6px;
		width: 40%; 
		padding-right: 15px; 
		white-space: nowrap;
	}
	
	/*
	Label the data
	*/
	td:nth-of-type(1):before 
	{ 
		content: ""; 
	}
	td:nth-of-type(2):before { content: "Monday"; }
	td:nth-of-type(3):before { content: "Tuesday"; }
	td:nth-of-type(4):before { content: "Wednesday"; }
	td:nth-of-type(5):before { content: "Thursday"; }
	td:nth-of-type(6):before { content: "Friday"; }
	td:nth-of-type(7):before { content: "Saturday"; }
	td:nth-of-type(8):before { content: "Sunday"; }
}
</style>

    </head>

    <body>

        <!-- Header -->
        <div class="container">
            <div class="header row">
                <div class="span12">
                    <div class="navbar">
                        <div class="navbar-inner">
                            <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </a>
							
                            <h1>
                                <a class=brand href="index.html"></a>
                            </h1>
							
                            <div class="nav-collapse collapse">
								{include file='andiaMenu.tpl'}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
		{include file=$obj->mContent}
  
        <!-- Footer -->
        <footer>
			{include file='andiaFooter.tpl'}
        </footer>

        <!-- Javascript -->
        <script src="http://localhost/thegympark/scripts/andia/jquery-1.8.2.min.js"></script>
        <script src="http://localhost/thegympark/scripts/andia/bootstrap.min.js"></script>
        <script src="http://localhost/thegympark/scripts/andia/jquery.flexslider.js"></script>
        <script src="http://localhost/thegympark/scripts/andia/jquery.tweet.js"></script>
        <script src="http://localhost/thegympark/scripts/andia/jflickrfeed.js"></script>
        <script src="http://maps.google.com/maps/api/js?sensor=true"></script>
        <script src="http://localhost/thegympark/scripts/andia/jquery.ui.map.min.js"></script>
        <script src="http://localhost/thegympark/scripts/andia/jquery.quicksand.js"></script>
        <script src="http://localhost/thegympark/scripts/andia/jquery.prettyPhoto.js"></script>
        <script src="http://localhost/thegympark/scripts/andia/scripts.js"></script>
    </body>
</html>