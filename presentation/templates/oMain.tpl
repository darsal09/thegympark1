{load_presentation_object filename="mainFront" assign="obj"}
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
<title>{$obj->mTitle}</title>
<script src="{$obj->mLinkToJS}/source.js"></script>
{if $obj->mIsAdmin}
		<!-- Load jQuery -->	
		<script type="text/javascript" src="http://localhost/thegympark/scripts/jquery-1.9.1.js"></script>
		<script type="text/javascript" src="http://localhost/thegympark/scripts/jquery-ui.js"></script>
		<script type="text/javascript" src="http://localhost/thegympark/scripts/jquery.timepicker.js"></script>
		<!-- Load TinyMCE -->
		<script type="text/javascript" src="{$obj->mLinkToJS}/tiny_mce/jquery.tinymce.js"></script>
		<script type="text/javascript">
		 $(function() 
		 {
			$( "#datepicker" ).datepicker(
			{
				dateFormat:"yy-mm-dd",
				changeMonth: true,
				changeYear:true,
				numberOfMonths: 1,
				onClose: function( selectedDate ) 
				{
					$( "#datepicker2" ).datepicker( "option", "minDate", selectedDate );
				}
			});
			$( "#datepicker2" ).datepicker(
			{
				dateFormat:"yy-mm-dd",
				changeMonth: true,
				changeYear:true,
				numberOfMonths: 1,
				onClose: function( selectedDate ) 
				{
					$( "#datepicker" ).datepicker( "option", "maxDate", selectedDate );
				}
			});
		});
		
		$(function() {		
			$('#start_time').timepicker( { 'step': 5,
					'minTime': '5:00am',
					'maxTime': '11:00pm',
					'forceRoundTime': true
				} );			
			$('#start_time_button').on('click', function ()
				{
					$( '#start_time' ).timepicker('setTime', new Date());
					var d = new Date();
					var times = ( d.getHours() + 1 )+":"+d.getMinutes();
					
					$( '#end_time' ).timepicker( 'setTime', times );
				});
				
				$( '#start_time' ).on( 'changeTime', function() {
					var times = $( this ).val();
					
					$( '#end_time' ).timepicker( 'setTime', times );
				});				
				
			$('#end_time').timepicker( { 'step': 5, 
										'minTime': '6:00am',
										'maxTime': '11:00pm',
										'forceRoundTime':true
				} );		
			$('#end_time_button').on('click', function ()
				{
					$( '#end_time' ).timepicker('setTime', new Date());
					var d = new Date();
					var times = ( d.getHours() - 1 )+":"+d.getMinutes();
					$( '#start_time' ).timepicker( 'setTime', times );
				});
		});
		
		$().ready(function() {
				$('textarea.tinymce').tinymce({
					// Location of TinyMCE script
					script_url : '{$obj->mLinkToJS}/tiny_mce/tiny_mce.js',

					// General options
					theme : "advanced",
					width : "100%",
					height : "500px",
					plugins : "autolink,lists,pagebreak,style,layer,table,save,advhr,advimage,advlink,emotions,iespell,inlinepopups,insertdatetime,preview,media,searchreplace,print,contextmenu,paste,directionality,fullscreen,noneditable,visualchars,nonbreaking,xhtmlxtras,template,advlist",

					// Theme options
					theme_advanced_buttons1 : "save,newdocument,|,bold,italic,underline,strikethrough,|,justifyleft,justifycenter,justifyright,justifyfull,|,styleselect,formatselect,fontselect,fontsizeselect",
					theme_advanced_buttons2 : "cut,copy,paste,pastetext,pasteword,|,search,|,replace,|,bullist,numlist,outdent,indent,blockquote,undo,redo,link,unlink,anchor,image,cleanup,help,code,insertdate,inserttime,preview,forecolor,backcolor",
					theme_advanced_buttons3 : "tablecontrols,|,hr,removeformat,visualaid,|,sub,sup,|,charmap,emotions,iespell,media,advhr,|,print,|,ltr,rtl,|,fullscreen",
					theme_advanced_buttons4 : "insertlayer,moveforward,movebackward,absolute,|,styleprops,spellchecker,|,cite,abbr,acronym,del,ins,attribs,|,visualchars,nonbreaking,blockquote,pagebreak,|,insertfile,insertimage",
					theme_advanced_toolbar_location : "top",
					theme_advanced_toolbar_align : "left",
					theme_advanced_statusbar_location : "bottom",
					theme_advanced_resizing : false,

					// Example content CSS (should be your site CSS)
					content_css : "styles/thegympark.css",

					// Drop lists for link/image/media/template dialogs
					template_external_list_url : "lists/template_list.js",
					external_link_list_url : "lists/link_list.js",
					external_image_list_url : "lists/image_list.js",
					media_external_list_url : "lists/media_list.js"
				});
			});
		</script>
		<!-- /TinyMCE -->
{/if}
<link type="text/css" rel="stylesheet" href="{$obj->mLinkToCss}" />
<link type="text/css" rel="stylesheet" href="http://code.jquery.com/ui/1.10.0/themes/base/jquery-ui.css">
<link type="text/css" rel="stylesheet" href="http://localhost/thegympark/styles/jquery.timepicker.css">
</head>
<body>
	<div id=bodies>
		<div id=header>
			<div>
				<div id=logo>	
					<img src="{$obj->mLinkToLogo}" width=140>
					<p style="padding-bottom: 0pt; padding-top: 0pt;color:rgb(5, 120, 24); " class="paragraph_style_2">Gymnastics Inspired Play</p>
				</div>
				<div id=menu>
					{include file="menu.tpl"}
				</div>
			</div>
		</div>
		<div id=mainContent>	
			{include file=$obj->mContent}
			<p>&nbsp;</p>
		</div>
		{if $obj->mShowQuickLinks}
			<div id=quickLinks>
				{if $obj->mIsAdmin}
					{include file="available_memberships.tpl"}
				{/if}
				{include file=$obj->mCategoryFile}
				{include file="quickLinks.tpl"}
			</div>
		{/if}
		<div id=footer>
			{include file="footer.tpl"}
			&copy; copyright 2012 <span style="color:#008029;font-weight:bold;">the Gym Park</span>
		</div>
	</div>
</body>
</html>