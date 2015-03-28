<?php
class controllerAdminClassGroup
{
	public $mClassGroupID;
	public $mProgramID;
	public $mCategoryID;
	
	public function __construct()
	{
		if( isset( $_GET[ 'tgp_class_group_id' ] ) )
			$this->mClassGroupID = sanitize::sani( $_GET[ 'tgp_class_group_id' ], 'INTIGER' );
		
		if( isset( $_GET[ 'tgp_program_id' ] ) )
			$this->mProgramID = sanitize::sani( $_GET[ 'tgp_program_id' ], 'INTIGER' );
		
		if( isset( $_GET[ 'tgp_category_id' ] ) )
			$this->mCategoryID = sanitize::sani( $_GET[ 'tgp_category_id' ], 'INTIGER' );
			
			
		$location = '';
		
		switch( classTitleModel::getType( array( ':cgID' => $this->mClassGroupID ) ) )
		{		
			case 'Flexible':
				$opID = classTitleModel::getOpenPlayID( array( ':sID' => seasonModel::getCurrentID() ) );
				$location = Link::Build( 'index.php?tgp_openplay_id='.$opID.'&action=adminOpenPlay' );
				break;
				
			default:
				$location = Link::Build( 'index.php?tgp_program_id='.$this->mProgramID.'&tgp_category_id='.$this->mCategoryID.'&tgp_class_group_id='.$this->mClassGroupID.'&action=adminClass_group' );
		}
			
		header( 'Location:'.$location );
		exit;
	}
		
	public function __destruct()
	{
		$this->mClassGroupID = 0;
	}
}
?>