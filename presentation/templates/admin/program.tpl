{load_presentation_object filename="program" foldername=admin assign="obj"}
<ol class=breadcrumb>
	{section name=i loop=$obj->mLinks}
		<li><a href="{$obj->mLinks[ i ].link}">&laquo;{$obj->mLinks[ i ].title}</a></li>
	{/section}
</ol>
<div class=page-header>
	<h1>Programs</h1>
</div>
<div class="panel panel-default">
		<div class=panel-heading><h1><span id="title">{$obj->mProgram.title}</span>
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
				<span id=description>{$obj->mProgram.description}</span>
			</p>
			<p>&nbsp;</p>
		</div>
		<div class=panel-footer>
			<div class=program_cateogries>		
					<h3 class=program_title>Categories
					<span style="float:right;">
							<a href="{$obj->mLinkToAddCategory}">+Add Category&raquo;</a>
					</span>				
					</h3>
				
				{section name=i loop=$obj->mCategories}
					<p>
						<a href="{$obj->mCategories[ i ].category_link}">{$obj->mCategories[ i ].title}&raquo;</a> 
						<span class=action_links><a href="{$obj->mCategories[ i ].add_class_title_link}">+Add Class Title&raquo;</a></span>
					</p>
				{sectionelse}
					<p>There are no categories</p>
				{/section}
			</div>
			
			<p>&nbsp;</p>
			<div class=class_groups>
				<h3 class=program_title>{$obj->mProgram.title} program Class Titles</h3>
			
				{section name=i loop=$obj->mClassTitles}
					<p>
						<a href="{$obj->mClassTitles[ i ].class_title_link}">{$obj->mClassTitles[ i ].title} <i>for</i> {$obj->mClassTitles[ i ].age_group}</a>
						<span class=action_links><a href="{$obj->mClassTitles[ i ].add_class_link}">+Add Class&raquo;</a></span>
					</p>
				{sectionelse}
					<p>There are no classes in this program</p>
				{/section}
			</div>
			<p>&nbsp;</p>
		{include file="program_featured_classes.tpl"}
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
								<input type=hidden name="programID" value="{$obj->mProgram.program_id}">
								<div class="form-group">
									<label class=control-label>Title</label><br/>
									<input type=text class=form-control name="title" value="{$obj->mProgram.title}">
								</div>
								<div class="form-group">
									<label  class=control-label>Description</label><br/>
									<textarea name="description" style="width:100%;height:100%;">{$obj->mProgram.description}</textarea>
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
										<input type=hidden name="tgp_program[]" value="{$obj->mProgram.program_id}">
										<input type=hidden name=type value="program">
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
		
		$.post( '{Link::Build( "api/admin/programs/program/update.php")}',
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
		
		$.post( '{Link::Build( "api/employee/programs/program/sendEmail.php")}',
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



</script>