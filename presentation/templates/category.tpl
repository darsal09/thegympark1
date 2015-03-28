{load_presentation_object filename="category" assign="obj"}	
<div class=page-header>
	<h1>{$obj->mCategoryInfo.title}</h1>
	
</div>
	<div class="panel panel-default">
		<div class=panel-heading style="background-color:{$obj->mCategoryInfo.hexColor};position:relative;clear:both;font-size:20px;color:white;	border-radius:5px;padding:10px;overflow:hidden;">
				<img src="{$obj->mImageSource}" class=pull-right style="">
				{$obj->mCategoryInfo.description}
		</div>
		<div class=panel-footer>
			{include file="category_featured_classes.tpl"}
		</div>
	</div>