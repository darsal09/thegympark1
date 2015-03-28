<?php
class addOpenPlayPayment
{
	public $mCards;
	public $mStudentID;
	
	public function __construct()
	{		
		$this->mStudentID = sanitize::sani( $_GET[ 'tgp_student_id' ], 'INTIGER' );
		$this->mPackageID = sanitize::sani( $_GET[ 'tgp_openplay_package_id' ], 'INTIGER' );
		
		if( isset( $_POST[ 'make_payment' ] ) )
			$this->save();
	}
	
	public function init()
	{
		$user = user::get( array( ':sID' => $this->mStudentID ) );		
		$this->mCards = cardsModel::get( array( ':uID' => $user[ 'id' ] ) );		
	}
	
	public function save()
	{
		$openplay = openPlayModel::getCurrent();
		
		if( isset( $_POST[ 'existing_card' ] ) )
		{
			$cardID = $_POST[ 'existing_card' ];
			
			$user = user::get( array( ':sID' => $this->mStudentID ) );
			
			$payment = new openPlayPayment( array( 'creditCard' => new creditCard( array( ':id' => $cardID ) ), 
													'openPlay' => new openPlay( openPlayModel::get( array( ':opID' => $openplay[ 'id' ] ) ) ), 
													'package' => new package( array( ':pOPID' => $this->mPackageID ) ),
													'memberID' => $this->mStudentID, 
													'userID' => $user[ 'id' ] )
											);
			$result = $payment->save();
			
			if( $result < 0 )
			{
				echo '<p>We could not save your payment.</p>';
				return;
			}
			
		}
		else
			print_r( $_POST );
			
		helper::redirect( 'employee/open-plays/current' );
	}
}
?>