<?php
class openPlayClassAttendance extends Controller
{
	public $mClassID, $mOpenPlayID;
	protected $_mRequired = array( 'openplay_id' => true, 'class_id' => true, 'dates' => true, 'student_id' => true );
	public $mLinkToOpenPlay;
	
	public function __construct()
	{
		if( !isset( $_GET[ 'tgp_openplay_id' ]  ) || !isset( $_GET[ 'tgp_class_id' ] ) )
			helper::redirect( 'open-plays' );
			
		parent::__construct();
		
		$this->mOpenPlayID 	= $this->mP[ 'openplay_id' ] 	= sanitize::sani( $_GET[ 'tgp_openplay_id' ], 'INTIGER' );
		$this->mClassID 	= $this->mP[ 'class_id' ] 		= sanitize::sani( $_GET[ 'tgp_class_id' ], 'INTIGER' );
		
		if( isset( $_POST[ 'save_openplay_attendance' ] ) )
			$this->save();
	}
	
	public function init()
	{
		$this->mLinkToOpenPlay = Link::Build( 'open-plays/'.$this->mOpenPlayID );
		
		$this->mStudents 	= openPlayModel::getStudentsWithClassesLeft( array( ':opID' => $this->mOpenPlayID ) );
		$this->mClass 		= classModel::get( array( ':cID' => $this->mClassID ) );		
	}
	
	private function save()
	{
		if( !isset( $_POST[ 'save_openplay_attendance' ] ))
			return;
			
		$this->init();
		
		$this->mP[ 'dates' ] = $this->setClassDate();
		
		foreach( $_POST[ 'attendance' ]  AS $sID )
		{
			$this->mP[ 'student_id' ] = sanitize::sani( $sID, 'INTIGER' );
			
			$opa = new openPlayAttendance( array( 'info' => $this->mP ) );
			
			if( $opa->save() )
				echo '<p>Attendance submitted</p>';
			else
				print_r( $opa->getErrors() );
		}
		
		helper::redirect( 'open-plays/'.$this->mOpenPlayID );
	}	
}
?>