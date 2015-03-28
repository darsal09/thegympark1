<?php /* Smarty version Smarty-3.1.8, created on 2015-02-28 18:14:33
         compiled from "C:\xampp\htdocs\thegympark/presentation/templates\admin\program.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2395654b46d773dc486-10735699%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '95bb6e2ff3fd88cfeb11270cc583ffee12430186' => 
    array (
      0 => 'C:\\xampp\\htdocs\\thegympark/presentation/templates\\admin\\program.tpl',
      1 => 1425165270,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2395654b46d773dc486-10735699',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_54b46d774da307_35595961',
  'variables' => 
  array (
    'obj' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54b46d774da307_35595961')) {function content_54b46d774da307_35595961($_smarty_tpl) {?><?php if (!is_callable('smarty_function_load_presentation_object')) include 'C:\\xampp\\htdocs\\thegympark/presentation/smarty_plugins\\function.load_presentation_object.php';
?><?php echo smarty_function_load_presentation_object(array('filename'=>"program",'foldername'=>'admin','assign'=>"obj"),$_smarty_tpl);?>

<ol class=breadcrumb>
	<?php if (isset($_smarty_tpl->tpl_vars['smarty']->value['section']['i'])) unset($_smarty_tpl->tpl_vars['smarty']->value['section']['i']);
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['name'] = 'i';
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['loop'] = is_array($_loop=$_smarty_tpl->tpl_vars['obj']->value->mLinks) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['show'] = true;
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['max'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['loop'];
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['step'] = 1;
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['start'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['step'] > 0 ? 0 : $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['loop']-1;
if ($_smarty_tpl->tpl_vars['smarty']->value['section']['i']['show']) {
    $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['total'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['loop'];
    if ($_smarty_tpl->tpl_vars['smarty']->value['section']['i']['total'] == 0)
        $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['show'] = false;
} else
    $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['total'] = 0;
if ($_smarty_tpl->tpl_vars['smarty']->value['section']['i']['show']):

            for ($_smarty_tpl->tpl_vars['smarty']->value['section']['i']['index'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['start'], $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['iteration'] = 1;
                 $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['iteration'] <= $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['total'];
                 $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['index'] += $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['step'], $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['iteration']++):
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['rownum'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['iteration'];
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['index_prev'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['index'] - $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['step'];
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['index_next'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['index'] + $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['step'];
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['first']      = ($_smarty_tpl->tpl_vars['smarty']->value['section']['i']['iteration'] == 1);
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['last']       = ($_smarty_tpl->tpl_vars['smarty']->value['section']['i']['iteration'] == $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['total']);
?>
		<li><a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinks[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['link'];?>
">&laquo;<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinks[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['title'];?>
</a></li>
	<?php endfor; endif; ?>
</ol>
<div class=page-header>
	<h1>Programs</h1>
</div>
<div class="panel panel-default">
		<div class=panel-heading><h1><span id="title"><?php echo $_smarty_tpl->tpl_vars['obj']->value->mProgram['title'];?>
</span>
			<span class=program_options style="float:right;">
				<a href="" class="btn btn-default btn-primary btn-lg delete">Delete&raquo;</a> 
				<a href="" class="btn btn-default btn-warning btn-lg edit">Edit&raquo;</a> 
				<a href="" class="btn btn-default btn-success btn-lg sendMail">Send Email&raquo;</a>
			</span>
		</h1>
		</div>
		<div class=panel-body>
			<p>
				Description:<br/>
				<span id=description><?php echo $_smarty_tpl->tpl_vars['obj']->value->mProgram['description'];?>
</span>
			</p>
			<p>&nbsp;</p>
		</div>
		<div class=panel-footer>
			<div class=program_cateogries>		
					<h3 class=program_title>Categories
					<span style="float:right;">
							<a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToAddCategory;?>
">+Add Category&raquo;</a>
					</span>				
					</h3>
				
				<?php if (isset($_smarty_tpl->tpl_vars['smarty']->value['section']['i'])) unset($_smarty_tpl->tpl_vars['smarty']->value['section']['i']);
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['name'] = 'i';
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['loop'] = is_array($_loop=$_smarty_tpl->tpl_vars['obj']->value->mCategories) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['show'] = true;
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['max'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['loop'];
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['step'] = 1;
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['start'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['step'] > 0 ? 0 : $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['loop']-1;
if ($_smarty_tpl->tpl_vars['smarty']->value['section']['i']['show']) {
    $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['total'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['loop'];
    if ($_smarty_tpl->tpl_vars['smarty']->value['section']['i']['total'] == 0)
        $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['show'] = false;
} else
    $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['total'] = 0;
if ($_smarty_tpl->tpl_vars['smarty']->value['section']['i']['show']):

            for ($_smarty_tpl->tpl_vars['smarty']->value['section']['i']['index'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['start'], $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['iteration'] = 1;
                 $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['iteration'] <= $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['total'];
                 $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['index'] += $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['step'], $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['iteration']++):
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['rownum'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['iteration'];
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['index_prev'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['index'] - $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['step'];
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['index_next'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['index'] + $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['step'];
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['first']      = ($_smarty_tpl->tpl_vars['smarty']->value['section']['i']['iteration'] == 1);
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['last']       = ($_smarty_tpl->tpl_vars['smarty']->value['section']['i']['iteration'] == $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['total']);
?>
					<p>
						<a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mCategories[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['category_link'];?>
"><?php echo $_smarty_tpl->tpl_vars['obj']->value->mCategories[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['title'];?>
&raquo;</a> 
						<span class=action_links><a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mCategories[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['add_class_title_link'];?>
">+Add Class Title&raquo;</a></span>
					</p>
				<?php endfor; else: ?>
					<p>There are no categories</p>
				<?php endif; ?>
			</div>
			
			<p>&nbsp;</p>
			<div class=class_groups>
				<h3 class=program_title><?php echo $_smarty_tpl->tpl_vars['obj']->value->mProgram['title'];?>
 program Class Titles</h3>
			
				<?php if (isset($_smarty_tpl->tpl_vars['smarty']->value['section']['i'])) unset($_smarty_tpl->tpl_vars['smarty']->value['section']['i']);
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['name'] = 'i';
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['loop'] = is_array($_loop=$_smarty_tpl->tpl_vars['obj']->value->mClassTitles) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['show'] = true;
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['max'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['loop'];
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['step'] = 1;
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['start'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['step'] > 0 ? 0 : $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['loop']-1;
if ($_smarty_tpl->tpl_vars['smarty']->value['section']['i']['show']) {
    $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['total'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['loop'];
    if ($_smarty_tpl->tpl_vars['smarty']->value['section']['i']['total'] == 0)
        $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['show'] = false;
} else
    $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['total'] = 0;
if ($_smarty_tpl->tpl_vars['smarty']->value['section']['i']['show']):

            for ($_smarty_tpl->tpl_vars['smarty']->value['section']['i']['index'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['start'], $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['iteration'] = 1;
                 $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['iteration'] <= $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['total'];
                 $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['index'] += $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['step'], $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['iteration']++):
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['rownum'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['iteration'];
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['index_prev'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['index'] - $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['step'];
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['index_next'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['index'] + $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['step'];
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['first']      = ($_smarty_tpl->tpl_vars['smarty']->value['section']['i']['iteration'] == 1);
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['last']       = ($_smarty_tpl->tpl_vars['smarty']->value['section']['i']['iteration'] == $_smarty_tpl->tpl_vars['smarty']->value['section']['i']['total']);
?>
					<p>
						<a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mClassTitles[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['class_title_link'];?>
"><?php echo $_smarty_tpl->tpl_vars['obj']->value->mClassTitles[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['title'];?>
 <i>for</i> <?php echo $_smarty_tpl->tpl_vars['obj']->value->mClassTitles[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['age_group'];?>
</a>
						<span class=action_links><a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mClassTitles[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['add_class_link'];?>
">+Add Class&raquo;</a></span>
					</p>
				<?php endfor; else: ?>
					<p>There are no classes in this program</p>
				<?php endif; ?>
			</div>
			<p>&nbsp;</p>
		<?php echo $_smarty_tpl->getSubTemplate ("program_featured_classes.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

	</div>	
</div>

<!-- MODAL FOR EDITING PROGRAM INFORMATION -->
				<div class="modal fade" id=editProgram tabindex="-1" role="dialog" aria-labelledby="#addPackageLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						 <div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							<h3 class="modal-title" id="edit_myModalLabel">Update Program</h3>
						</div>
						<div class=modal-content style="padding:5px;">							
							<form id=updateProgram>
								<input type=hidden name="programID" value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mProgram['program_id'];?>
">
								<div class="form-group">
									<label class=control-label>Title</label><br/>
									<input type=text class=form-control name="title" value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mProgram['title'];?>
">
								</div>
								<div class="form-group">
									<label  class=control-label>Description</label><br/>
									<textarea name="description" style="width:100%;height:100%;"><?php echo $_smarty_tpl->tpl_vars['obj']->value->mProgram['description'];?>
</textarea>
								</div>
								<div class=form-group>
									<a class='btn btn-default btn-primary btn-lg update' name="updateProgram">Update&laquo;</a>
									<a class='btn btn-default btn-primary btn-lg cancel' id=editProgram_modal href="">Cancel</a>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
<!-- MODAL TO SEND EMAIL -->
				<div class="modal fade" id=sendEmail tabindex="-1" role="dialog" aria-labelledby="#addPackageLabel" aria-hidden="true">
				<div class="modal-dialog modal-lg">
					<div class="modal-content">
						 <div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							<h3 class="modal-title" id="edit_myModalLabel">Send Email</h3>
						</div>
						<div class=modal-content style="padding:5px;">							
							<form id=sendEmails>
										<input type=hidden name="tgp_program[]" value="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mProgram['program_id'];?>
">
									<div class=form-group>
										<label class=control-label>Subject</label><br/>
										<input type=text class=form-control name=subject>
									</div>									
									<div class=form-group>
										<label class=control-label>Message</label><br/>
										<textarea class="tinymce form-control" style="height:50px;" id=class_emailMessage name=message></textarea>
									</div>
									<div class=form-group>
										<a class='btn btn-default btn-primary btn-lg sendEmail' href="">Send Email&raquo;</a>
										<a class='btn btn-default btn-primary btn-lg cancel' id=sendEmail_modal href="">Cancel</a>
									</div>
							</form>
						</div>
					</div>
				</div>
			</div>
<script>
$( document ).ready( function(){
	$('.edit').click( function(e){
		e.preventDefault();
		
		showModal( 'editProgram');
	});
	
	$('.sendMail' ).click( function(e){
		e.preventDefault();
		showModal( 'sendEmail');
	});
	
	$( '.update' ).click( function( e ){
		e.preventDefault();
		
		$.post( '<?php echo Link::Build("api/admin/programs/program/update.php");?>
',
			$('#'+this.name).serialize(),
			function(data){
				data = jQuery.parseJSON( data );
				
				if( data.success )
					return populate( data.program );
				
				return alert( data.message );
			});
	});
	
	
	$('.sendEmail' ).click( function( e ){
		e.preventDefault();
		
		$.post( '<?php echo Link::Build("api/employee/programs/program/sendEmail.php");?>
',
			$( '#sendEmails' ).serialize(),
			function (data){
				data = jQuery.parseJSON( data );
				
				alert( data.message );
				if( data.success )
					closeModal( 'sendEmail' );
			});
	});
	
	function populate(data){   
		$.each(data, function(key, value){  
			$( '#'+key).html( value );
		});  
		
		closeModal( 'editProgram' );
	}
});



</script><?php }} ?>