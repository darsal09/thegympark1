<?php
class students
{
	public $mStudents;
	public $mLinkToAdmin;
	
	public $mSortType = '';
	
	public function __construct()
	{				
		$this->mLinkToAddChild = Link::Build( 'index.php?action=addChild' );
		
		if( isset( $_GET[ 'sort' ] ) )
			$this->mSortType = $_GET[ 'sort' ];
	}
	
	public function init()
	{
	
		switch( $this->mSortType )
		{
			case 'firstname':
				$this->mStudents = administrator::getStudentsSortByFirstName();
				break;
				
			case 'dob':
				$this->mStudents = administrator::getStudentsSortByDOB();
				break;
				
			default:
			$this->mStudents = administrator::getStudents( );
		}
		
		$this->setLinks();
		
		$this->mLinkToAdmin 		= Link::Build( 'admin' );
		$this->mLinkToSortByLast 	= Link::Build( 'admin/students/' );
		$this->mLinkToSortByFirst 	= Link::Build( 'admin/students/sort/firstname' );
		$this->mLinkToSortByDOB 	= Link::Build( 'admin/students/sort/dob' );
	}
	
	private function setLinks()
	{
		$s = &$this->mStudents;
		$size = sizeof( $s );
		
		for( $i = 0; $i < $size; $i++ )
		{
			$s[ $i ][ 'link_to_student' ] = Link::Build( 'admin/students/'.$s[ $i ][ 'id' ] );
			$s[ $i ][ 'link_to_email' ] = Link::Build( 'admin/students/'.$s[ $i ][ 'id' ].'/singleEmail' );
			
			list( $year, $month, $day ) = explode( '-', $s[ $i ][ 'dob' ] );
			
			$aYear = date( 'Y' );
			$aMonth = date( 'n' );
			$aDay = date( 'l' );
			if( intval( $year ) != 0 )
			{
				$dYear = $aYear - $year;
				
				if( $aMonth < $month )
					$dYear--;
				else if( $aMonth == $month && $aDay < $day )
					$dYear--;
				
				$s[ $i ][ 'age' ] = $dYear;
				$s[ $i ][ 'dob' ] = date( 'M. jS, Y', strtotime( $s[ $i ][ 'dob' ] ) );
			}
			else
			{
				$s[ $i ][ 'age' ] = '-';
				$s[ $i ][ 'dob' ] = '-';
			}
		}
	}
	
	public function __destruct()
	{
	
	}
}
?>