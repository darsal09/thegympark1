{load_presentation_object filename="index" foldername=admin assign="obj"}
		{if !empty( $obj->mOptions ) }
		
			<ol class=breadcrumb>
				<a href="{$obj->mLinkToAdmin}" title="go back to admin main menu">&laquo;Admin</a> 
			</ol>
			<h1 class=program_title>
				{$obj->mOptions}
				{if !empty( $obj->mLinkTitle ) }
					<span style="float:right;font-size:20px;"><a href="{$obj->mLinkToAdd}">{$obj->mLinkTitle}</a></span>
				{/if}
			</h1>
		{else}
			<h1>
				Admin 				
				{if !empty( $obj->mLinkTitle ) }
					<span style="float:right;"><a href="{$obj->mLinkToAdd}">{$obj->mLinkTitle}</a></span>
				{/if}
			</h1>
		{/if}
<div class=row>	
	{section name=i loop=$obj->mObjects}
		<div class="objects col-md-2" onClick="goTo( '{$obj->mObjects[ i ].link}' );" title="{$obj->mObjects[ i ].link_title}"
			{if isset( $obj->mObjects[ i ].hexColor) }
				style="background-color:{$obj->mObjects[ i ].hexColor};"
			{/if}
			>
			<p><a href="{$obj->mObjects[ i ].link}">{$obj->mObjects[ i ].title}</a></p>
		</div>
	{/section}
</div>	
	{if $obj->mOptions == 'Students'}
		<div class=clear></div>
		{include file='students.tpl'}
	{/if}
