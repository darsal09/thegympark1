<?php
class feature
{
	public $mFeature;
	
	private $mFeatureID;
	public $mATime;
	public $mPTime;
	public $mMTime;
	
	public function __construct()
	{
		if( isset( $_GET[ 'tgp_feature_id' ] ) )
			$this->mFeatureID = sanitize::sani( $_GET[ 'tgp_feature_id' ], 'INTIGER' );
			
		$this->mFeature = memberships::getFeature( $this->mFeatureID );

		$this->mATime = date( 'H:i' );
		$this->mPTime = date( 'H:i', strtotime( '+30 minutes', strtotime( $this->mATime ) ) );
		$this->mMTime = date( 'H:i', strtotime( '-30 minutes', strtotime( $this->mATime ) ) );
	}
}
?>