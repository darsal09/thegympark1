<?php
class emailTemplate
{
	private function __construct()
	{
	
	}
		
	private static function css()
	{
		return '<html>
			<meta charset="utf-8">
			<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1,user-scalable=no">				
			<head>
				<style>
				.content
				{
					border-radius:5px;
					background:#CFEDF7;
					margin:0 auto;
					overflow:hidden;
					width:100%;
				}
				.header
				{
					padding:15px;
					background-image: url( "'.Link::Build( '' ).'images/background.png" );
					overflow:hidden;
					height:80px;
				}
				.main
				{
					color:black;
					margin:0 auto;
					background:white;
					width:100%;
					min-height:500px;
					padding:20px;
				}
				.footer
				{	
					padding-top:20px;
					background-image: url( "'.Link::Build( '' ).'images/footer.png" );
					color:black;
					overflow:hidden;
					height:160px;
					width:100%;
					padding:20px;
				}
				</style></head>';
	}
	
	public static function header()
	{
		return self::css().'<body><div class=content style="border-radius:5px; background:#CFEDF7; margin:0 auto; overflow:hidden; width:100%;">
								<div class=header style="padding:15px; background-image: url( "'.Link::Build( '' ).'images/background.png" ); overflow:hidden; height:80px;"><a href="'.Link::Build( '' ).'"><img src="'.Link::Build( '' ).'images/gp_symbol.png"></a></div><div class=main style="color:black; margin:0 auto; background:white; width:100%; min-height:500px; padding:20px;">';
	}
	
	public static function footer()
	{
		return '</div><div class=footer style="padding-top:20px; background-image: url( "'.Link::Build( '' ).'images/footer.png" ); color:black; overflow:hidden; height:160px; width:100%; padding:20px;"><p>Email sent from <br/><b>The Gym Park</b><br/>18 Oak Street<br/>Green Point, Brooklyn, NY 11222</p></div></div></body></html>';
	}
	
	public static function set( $message )
	{
		return self::header().$message.self::footer();
	}
}
?>