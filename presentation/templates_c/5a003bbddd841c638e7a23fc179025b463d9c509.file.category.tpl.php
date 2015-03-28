<?php /* Smarty version Smarty-3.1.8, created on 2015-01-09 23:44:17
         compiled from "C:\xampp\htdocs\thegympark/presentation/templates\category.tpl" */ ?>
<?php /*%%SmartyHeaderCode:3045654b0ac8fd36d06-47016947%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '5a003bbddd841c638e7a23fc179025b463d9c509' => 
    array (
      0 => 'C:\\xampp\\htdocs\\thegympark/presentation/templates\\category.tpl',
      1 => 1420865055,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '3045654b0ac8fd36d06-47016947',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_54b0ac8fd98789_97509096',
  'variables' => 
  array (
    'obj' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54b0ac8fd98789_97509096')) {function content_54b0ac8fd98789_97509096($_smarty_tpl) {?><?php if (!is_callable('smarty_function_load_presentation_object')) include 'C:\\xampp\\htdocs\\thegympark/presentation/smarty_plugins\\function.load_presentation_object.php';
?><?php echo smarty_function_load_presentation_object(array('filename'=>"category",'assign'=>"obj"),$_smarty_tpl);?>
	
<div class=page-header>
	<h1><?php echo $_smarty_tpl->tpl_vars['obj']->value->mCategoryInfo['title'];?>
</h1>
	
</div>
	<div class="panel panel-default">
		<div class=panel-heading style="background-color:<?php echo $_smarty_tpl->tpl_vars['obj']->value->mCategoryInfo['hexColor'];?>
;position:relative;clear:both;font-size:20px;color:white;	border-radius:5px;padding:10px;overflow:hidden;">
				<img src="<?php echo $_smarty_tpl->tpl_vars['obj']->value->mImageSource;?>
" class=pull-right style="">
				<?php echo $_smarty_tpl->tpl_vars['obj']->value->mCategoryInfo['description'];?>

		</div>
		<div class=panel-footer>
			<?php echo $_smarty_tpl->getSubTemplate ("category_featured_classes.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

		</div>
	</div><?php }} ?>