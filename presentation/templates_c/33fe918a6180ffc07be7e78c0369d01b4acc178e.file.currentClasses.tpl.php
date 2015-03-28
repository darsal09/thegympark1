<?php /* Smarty version Smarty-3.1.8, created on 2015-01-25 13:51:46
         compiled from "C:\xampp\htdocs\thegympark/presentation/templates\employee\currentClasses.tpl" */ ?>
<?php /*%%SmartyHeaderCode:311154afd976c8ed84-30086059%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '33fe918a6180ffc07be7e78c0369d01b4acc178e' => 
    array (
      0 => 'C:\\xampp\\htdocs\\thegympark/presentation/templates\\employee\\currentClasses.tpl',
      1 => 1422211336,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '311154afd976c8ed84-30086059',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_54afd976d17908_43531204',
  'variables' => 
  array (
    'obj' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54afd976d17908_43531204')) {function content_54afd976d17908_43531204($_smarty_tpl) {?><?php if (!is_callable('smarty_function_load_presentation_object')) include 'C:\\xampp\\htdocs\\thegympark/presentation/smarty_plugins\\function.load_presentation_object.php';
?><?php echo smarty_function_load_presentation_object(array('filename'=>"currentClasses",'foldername'=>"employee",'assign'=>"obj"),$_smarty_tpl);?>

<div class=page-header>
	<h1>
		<?php echo $_smarty_tpl->tpl_vars['obj']->value->mSeason['season'];?>
 <?php echo $_smarty_tpl->tpl_vars['obj']->value->mSeason['year'];?>
<br/>
		<small>From: <?php echo helper::getDateWithoutDay($_smarty_tpl->tpl_vars['obj']->value->mSeason['start_date']);?>
<br/>
			To: <?php echo helper::getDateWithoutDay($_smarty_tpl->tpl_vars['obj']->value->mSeason['end_date']);?>
</small>
	</h1>
</div>
<div class=row>
	<div class=col-md-7>
		<div class="panel panel-default">
			<div class=panel-heading>
				<h1>Classes</h1>
			</div>
			<div class=panel-body>
				<ul class=list-group>
							<?php if (isset($_smarty_tpl->tpl_vars['smarty']->value['section']['i'])) unset($_smarty_tpl->tpl_vars['smarty']->value['section']['i']);
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['name'] = 'i';
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['loop'] = is_array($_loop=$_smarty_tpl->tpl_vars['obj']->value->mClasses) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
								<li class=list-group-item id="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mClasses[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['class_id'];?>
">
									<div class=row>
										<div class=col-md-6><a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mClasses[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['link'];?>
"><?php echo $_smarty_tpl->tpl_vars['obj']->value->mClasses[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['title'];?>
</a><br/><?php echo $_smarty_tpl->tpl_vars['obj']->value->mClasses[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['weekday'];?>
 <?php echo helper::getTimeFormat($_smarty_tpl->tpl_vars['obj']->value->mClasses[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['start_time']);?>
</div>
										<div class=col-md-3>
											<a class="btn btn-default btn-success takeAttendance" id="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mClasses[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['class_id'];?>
" href="">Take Attendance</a>
										</div>
									</div>
								</li>
							<?php endfor; endif; ?>
				</ul>
			</div>
		</div>
	</div>
	<div class=col-md-5>
		
	</div>
</div>
<script>
$( document ).ready( function()
{
	
	$( '.takeAttendance' ).click( function( e )
	{			
		e.preventDefault();
		var id = this.id;
		
		$.get( "<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToGetClassStudents;?>
",
			{
				class_id:id
			},
			function ( data, status )
			{
			//	return alert( data );
				data = jQuery.parseJSON( data );
				
				if( data.length == 0 )
					return alert( 'No Students in the class' );
				alert( data.class_id );
			} );
	} );	
});

</script><?php }} ?>