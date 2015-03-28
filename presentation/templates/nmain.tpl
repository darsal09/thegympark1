{load_presentation_object filename="mainFront" assign="obj"}
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
	<title>{$obj->mTitle}</title>
	<link rel=stylesheet href="{Link::Build( '' )}/bootstrap/css/bootstrap.css">
	<link rel=stylesheet href="{Link::Build( '' )}/bootstrap/css/mozillaTableHack.css">
	<!-- Latest compiled and minified CSS -->

   <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- Custom styles for this template -->
<script src="{$obj->mLinkToJS}/source.js"></script>
<script type="text/javascript" src="{$obj->mLinkToJS}/jquery-1.9.1.js"></script>
{if $obj->mIsAdmin}
		<!-- Load jQuery -->	
		<script type="text/javascript" src="{$obj->mLinkToJS}/jquery-ui.js"></script>
		<script type="text/javascript" src="{$obj->mLinkToJS}/jquery.timepicker.js"></script>
		<!-- Load TinyMCE -->
		<script type="text/javascript" src="{$obj->mLinkToJS}/tiny_mce/jquery.tinymce.js"></script>
		<script type="text/javascript">
		 $(function() 
		 {
			$( "#datepicker" ).datepicker(
			{
				dateFormat:"mm/dd/yy",
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
				dateFormat:"mm/dd/yy",
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
			$('#start_time').timepicker( { 'step': 5 } );			
			$('#start_time_button').on('click', function ()
				{
					$( '#start_time' ).timepicker('setTime', new Date());
					var d = new Date();
					var times = ( d.getHours() + 1 )+":"+d.getMinutes();
					
					$( '#end_time' ).timepicker( 'setTime', times );
				});
				
			$('#end_time').timepicker( { 'step': 5 } );		
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
					height : "100%",
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
					content_css : "{Link::Build( 'styles' )}/thegympark.css",

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
<link type="text/css" rel="stylesheet" href="{Link::Build('styles')}/thegympark.css" />
<link type="text/css" rel="stylesheet" href="http://code.jquery.com/ui/1.10.0/themes/base/jquery-ui.css">
<link type="text/css" rel="stylesheet" href="{Link::Build( 'styles' )}/jquery.timepicker.css">
</head>
 <body role="document">
    <div class="navbar navbar-inverse navbar-fixed-top" role="navigation" id=header style="border:0px;">
      <div class="container">
				<div id=logo>	
					<img src="{$obj->mLinkToLogo}">
				</div>
				<div id=menu>
					{include file="menu.tpl"}
				</div>
			</div>
		</div>
	</div>
    <div id=bodies class="container theme-showcase" role="main">
		<div class=container>
			{include file=$obj->mContent}
		</div>
	</div>
	<div id=footer>
		<div class=container>
			{include file="footer.tpl"}
			&copy; copyright 2012 <span style="color:#008029;font-weight:bold;">the Gym Park System</span>
		</div>
	</div>
</body>
<script src="{Link::Build( '' )}bootstrap/js/bootstrap.min.js"></script>
<script>
	function showModal( ids )
	{
		$( '#'+ids ).modal( 'show' );
	}

	function closeModal( ids )
	{
		$( '#'+ids ).modal( 'hide' );
	}
$( document ).ready(function(){

	$( '.add' ).click( function( e ){
		e.preventDefault();
		
		handleForm( this.id.substring( 0, this.id.indexOf( '_' ) ));
	} );
	
	/*
		This part closes a modal as long you use class cancel in the link or button
		the link or button should have the following set up modal name of the modal to close followed by _ and something else but modalname_
	*/
	$( '.cancel' ).click( function( e ){
		e.preventDefault();
		
		var id = this.id; //the id in the link or button
		var index = id.indexOf( '_' ); //the index get the substring of modalname without the _
		
		closeModal( id.substring( 0, index ) );
	});
	
	$( '.update' ).click( function(e){
		e.preventDefault();
		var id = this.id;
		var index = id.indexOf( '_' );
		updateForm( id.substring( 0, index ) );
	});
	
	$( '.email' ).click( function ( e ){
		e.preventDefault();
		
		showModal( this.id+'Info');
	} );
	
	$( '.save' ).click( function( e){
		e.preventDefault();
		var url = $( '#modals_url' ).val();
		
		$.post( url,
			$( '#forms' ).serialize(),
			function( data){
				console.log( data );
			}
		);
	} );
});
	
	function handleForm( forms ){
		var url = $( '#'+forms+'_url' ).val();
		
		$.post( url, 
				$( '#'+forms ).serialize(),
				function( data){
					alert(data);
			});
	}
	
function Wrapper( id, title, url, args ){	
	this.args = args;
	this.title = title;
	this.url = url;
	this.id = id;
	
	this.writeToModal = function(){				
		var inputs = '';
		
		$( '#modalsTitle' ).html( this.title );
		$( '#modals_url' ).val( this.url );
		$( '#wrapper_id' ).val( this.id );
		
		$( '#fields').html( '' );
		
		for( x in this.args){
			inputs += '<div class=row>';
				inputs += '<div class="col-md-12">';
						inputs += '<label class="control-label">'+x+'</label><br/>';
						inputs += this.args[ x ].writeField();
				inputs += '</div>';
			inputs += '</div>';
		}

		$( '#fields' ).html( inputs );
	}
	
	this.writeToModal();	
	showModal( 'modals' );
}


var log = (function(){
	var log = 'Message: ';
	return{
		add:function( message ){
			log += message+'\n';
			},
		show:function(){
			console.log( log );
		}
	};
})();
	
	
function Field( name, type, value, options){
	this.name = name;
	this.type = type;
	this.value = value;
	this.options = options;
	
	this.writeField = function(){
		var inputs = '';
		
		switch( this.type){
			case 'select':
			case 'Select':
				var inputs = '<select name="'+this.name+'">';
				for( x in this.options){
					inputs += '<option value="'+this.options[ x ].value+'" ';
					if( this.value == this.options[ x ].value ){
						inputs += ' selected';
					}
					inputs += '>'+this.options[ x ].title+'</option>';
				}
				inputs += '</select>';
				break;
				
			case 'radio':
			case 'Radio':
				for( x in this.options ){
					inputs += '<input type=radio name="'+this.name+'" value="'+this.options[ x ].value+'" placeholder="enter '+this.name+'"';
					if( this.value == this.options[ x ].value){
						inputs += ' checked ';
					}
					inputs += ' />'+this.options[ x ].title+'<br/>';
				}
				break;
				
			case 'textarea':
			case 'Textarea':
			case 'TextArea':
				inputs += '<textarea name="'+this.name+'" class="form-control" placeholder="enter '+this.name+'">'+this.value+'</textarea>';
				break;
				
			default:
				inputs += '<input name="'+this.name+'"  class="form-control" value="'+this.value+'" placeholder="enter '+this.name+'" />';
		}
		
		return inputs;
	};
}

function Option( title, values ){
	this.title = title;
	this.value = values;
}
	
	
</script>
</html>