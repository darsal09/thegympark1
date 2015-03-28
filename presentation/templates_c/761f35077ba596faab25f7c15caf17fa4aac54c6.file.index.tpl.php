<?php /* Smarty version Smarty-3.1.8, created on 2015-01-10 18:23:32
         compiled from "C:\xampp\htdocs\thegympark/presentation/templates\admin\index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1917854b1b45b9a8506-21069784%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '761f35077ba596faab25f7c15caf17fa4aac54c6' => 
    array (
      0 => 'C:\\xampp\\htdocs\\thegympark/presentation/templates\\admin\\index.tpl',
      1 => 1420932210,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1917854b1b45b9a8506-21069784',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_54b1b45baf4580_20011299',
  'variables' => 
  array (
    'obj' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54b1b45baf4580_20011299')) {function content_54b1b45baf4580_20011299($_smarty_tpl) {?><?php if (!is_callable('smarty_function_load_presentation_object')) include 'C:\\xampp\\htdocs\\thegympark/presentation/smarty_plugins\\function.load_presentation_object.php';
?><?php echo smarty_function_load_presentation_object(array('filename'=>"index",'foldername'=>'admin','assign'=>"obj"),$_smarty_tpl);?>

		<?php if (!empty($_smarty_tpl->tpl_vars['obj']->value->mOptions)){?>
		
			<ol class=breadcrumb>
				<a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToAdmin;?>
" title="go back to admin main menu">&laquo;Admin</a> 
			</ol>
			<h1 class=program_title>
				<?php echo $_smarty_tpl->tpl_vars['obj']->value->mOptions;?>

				<?php if (!empty($_smarty_tpl->tpl_vars['obj']->value->mLinkTitle)){?>
					<span style="float:right;font-size:20px;"><a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToAdd;?>
"><?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkTitle;?>
</a></span>
				<?php }?>
			</h1>
		<?php }else{ ?>
			<h1>
				Admin 				
				<?php if (!empty($_smarty_tpl->tpl_vars['obj']->value->mLinkTitle)){?>
					<span style="float:right;"><a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkToAdd;?>
"><?php echo $_smarty_tpl->tpl_vars['obj']->value->mLinkTitle;?>
</a></span>
				<?php }?>
			</h1>
		<?php }?>
<div class=row>	
	<?php if (isset($_smarty_tpl->tpl_vars['smarty']->value['section']['i'])) unset($_smarty_tpl->tpl_vars['smarty']->value['section']['i']);
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['name'] = 'i';
$_smarty_tpl->tpl_vars['smarty']->value['section']['i']['loop'] = is_array($_loop=$_smarty_tpl->tpl_vars['obj']->value->mObjects) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
		<div class="objects col-md-2" onClick="goTo( '<?php echo $_smarty_tpl->tpl_vars['obj']->value->mObjects[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['link'];?>
' );" title="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mObjects[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['link_title'];?>
"
			<?php if (isset($_smarty_tpl->tpl_vars['obj']->value->mObjects[$_smarty_tpl->getVariable('smarty',null,true,false)->value['section']['i']['index']]['hexColor'])){?>
				style="background-color:<?php echo $_smarty_tpl->tpl_vars['obj']->value->mObjects[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['hexColor'];?>
;"
			<?php }?>
			>
			<p><a href="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mObjects[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['link'];?>
"><?php echo $_smarty_tpl->tpl_vars['obj']->value->mObjects[$_smarty_tpl->getVariable('smarty')->value['section']['i']['index']]['title'];?>
</a></p>
		</div>
	<?php endfor; endif; ?>
</div>	
	<?php if ($_smarty_tpl->tpl_vars['obj']->value->mOptions=='Students'){?>
		<div class=clear></div>
		<?php echo $_smarty_tpl->getSubTemplate ('students.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

	<?php }?>
<?php }} ?>