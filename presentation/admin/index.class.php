<?php
class index
{
	public $mObjects;
	
	public $mOptions = "";
	public $mLinkToAdmin = '';
	public $mLinkTitle = '';
	
	public function __construct()
	{
		if( !user::isAdmin() )
			helper::redirect( 'sign-in' );
	
		$this->mObjects = array();
		
		if( isset( $_GET[ 'tgp_admin_options' ] ) )
		{
			$this->mOptions = $_GET[ 'tgp_admin_options' ];
			$this->mLinkToAdmin = Link::Build( 'admin' );
		}
			
		switch( $this->mOptions )
		{
			case 'Classes':
				$this->setClassesMenu();
				break;
				
			case 'Open-Plays':
				$this->setOpenPlaysMenu();
				break;
			
			case 'Newsletters':
				$this->setNewsletterMenu();
				break;
				
			case 'Students':
				$this->setStudentsMenu();
				break;
				
			case 'Emails':
				$this->setEmailMenu();
				break;
				
			case 'Categories':
				$this->setCategoryMenu();
				break;
				
			case 'Programs':
				$this->setProgramMenu();
				break;
			
			case 'Seasons':
				$this->setSeasonsMenu();
				break;
			
			case 'Holidays':
				$this->setHolidaysMenu();
				break;
				
			default:
				$this->setDefaultMenu();
				break;
		}
	}
	
	private function setDefaultMenu()
	{
		if( !empty( $this->mOptions ) )
			return;
			
		$this->mObjects[ sizeof( $this->mObjects ) ] = array( 'title' => "Classes", 'link_title' => 'Go To Class Administering', 'link' => Link::Build( 'admin/classes' ) );
		$this->mObjects[ sizeof( $this->mObjects ) ] = array( 'title' => "Open Plays", 'link_title' => 'Go To Open Plays Administering', 'link' => Link::Build( 'admin/open-plays' ) );
		$this->mObjects[ sizeof( $this->mObjects ) ] = array( 'title' => "Students", 'link_title' => 'Go To Students Administering', 'link' => Link::Build( 'admin/students' ) );
		$this->mObjects[ sizeof( $this->mObjects ) ] = array( 'title' => "Programs", 'link_title' => 'Go To Programs Administering', 'link' => Link::Build( 'admin/programs' ) );
		$this->mObjects[ sizeof( $this->mObjects ) ] = array( 'title' => "Categories", 'link_title' => 'Go To Categories Administering', 'link' => Link::Build( 'admin/categories' ) );
		$this->mObjects[ sizeof( $this->mObjects ) ] = array( 'title' => "Memberships", 'link_title' => 'Go To Memberships Administering', 'link' => Link::Build( 'admin/memberships' ) );
		$this->mObjects[ sizeof( $this->mObjects ) ] = array( 'title' => "Invoices", 'link_title' => 'Go To Invoices Administering', 'link' => Link::Build( 'admin/invoices' ) );
		$this->mObjects[ sizeof( $this->mObjects ) ] = array( 'title' => "Newsletters", 'link_title' => 'Go To Newsletters Administering', 'link' => Link::Build( 'admin/newsletters' ) );
		$this->mObjects[ sizeof( $this->mObjects ) ] = array( 'title' => "Emails", 'link_title' => 'Go To Email Administering', 'link' => Link::Build( 'admin/Emails' ) );
		$this->mObjects[ sizeof( $this->mObjects ) ] = array( 'title' => "Seasons", 'link_title' => 'Go To Season Administering', 'link' => Link::Build( 'admin/seasons' ) );
		$this->mObjects[ sizeof( $this->mObjects ) ] = array( 'title' => "Holidays", 'link_title' => 'Go To Holidays Administering', 'link' => Link::Build( 'admin/holidays' ) );
		$this->mObjects[ sizeof( $this->mObjects ) ] = array( 'title' => "Employees", 'link_title' => 'Go To Holidays Administering', 'link' => Link::Build( 'admin/employees' ) );
		$this->mObjects[ sizeof( $this->mObjects ) ] = array( 'title' => "Instructors", 'link_title' => 'Go To Holidays Administering', 'link' => Link::Build( 'admin/instructors' ) );
	}
	
	private function setClassesMenu()
	{
		if( $this->mOptions !== 'Classes' )
			return;
		
		header( 'Location:'.Link::Build( 'index.php?action=classes' ) );
		exit;
		
		$this->mObjects[ sizeof( $this->mObjects ) ] = array( 'title' => "Add", 'link_title' => 'Go To Add A Class',  'link' => Link::Build( 'index.php?action=addClasses' ) );
		$this->mObjects[ sizeof( $this->mObjects ) ] = array( 'title' => "View", 'link_title' => 'Go To View A Class', 'link' => Link::Build( 'classes' ) );		

	}
	
	private function setOpenPlaysMenu()
	{
		header( 'Location:'.Link::Build( 'index.php?action=openPlays' )  );
		exit;
	}
	
	private function setNewsletterMenu()
	{
		if( $this->mOptions !== 'Newsletters' )
			return;
			
		$this->mObjects[ sizeof( $this->mObjects ) ] = array( 'title' => "Add", 'link_title' => 'Go To Add A Newsletter', 'link' => Link::Build( 'addNewsletter' ) );
		$this->mObjects[ sizeof( $this->mObjects ) ] = array( 'title' => "View", 'link_title' => 'Go To View The Newsletters', 'link' => Link::Build( 'newsletters' ) );
		$this->mObjects[ sizeof( $this->mObjects ) ] = array( 'title' => "Send", 'link_title' => 'Go To Send A Newsletter', 'link' => Link::Build( 'sendNewsletter' ) );
		$this->mObjects[ sizeof( $this->mObjects ) ] = array( 'title' => "Categories", 'link_title' => 'Go To Newsletter Categories', 'link' => Link::Build( 'newsletterCategories' ) );
		$this->mObjects[ sizeof( $this->mObjects ) ] = array( 'title' => "Members", 'link_title' => 'Go To Newsletter Members', 'link' => Link::Build( 'newsletterMembers' ) );				
		$this->mObjects[ sizeof( $this->mObjects ) ] = array( 'title' => "Filters", 'link_title' => 'Go To Newsletter Filters', 'link' => Link::Build( 'newsletterFilters' ) );				
		$this->mObjects[ sizeof( $this->mObjects ) ] = array( 'title' => "MailChimp", 'link_title' => 'Go To Newsletter Set Up', 'link' => Link::Build( 'mailChimp' ) );				
		$this->mObjects[ sizeof( $this->mObjects ) ] = array( 'title' => "Mandrill", 'link_title' => 'Go To Mandrill Set Up', 'link' => Link::Build( 'index.php?action=mandrill' ) );				
	}
	
	private function setStudentsMenu()
	{
		if( $this->mOptions !== 'Students' )
			return;
		$this->mLinkToAdd = Link::Build( 'index.php?action=addChild' );
		$this->mLinkTitle = '+Add Participant&raquo;';
		
	}
	private function setCategoryMenu()
	{			
		$cat = catalog::getCategories();
		$size = sizeof( $cat );
		
		for( $i = 0; $i < $size; $i++ )	
			$this->mObjects[ sizeof( $this->mObjects ) ] = array( 'title' => $cat[ $i ][ 'title' ], 'link_title' => 'Go To View '.$cat[ $i ][ 'title' ], 'link' => Link::Build( 'program-'.$cat[ $i ][ 'program_id' ].'/category-info/'.$cat[ $i ][ 'cc_id' ] ), 'hexColor' => $cat[ $i ][ 'hexColor' ] );		
	}
	
	private function setProgramMenu()
	{

	$this->mLinkToAdd = Link::Build( 'add-program' );
		$this->mLinkTitle = 'Add Program&raquo;';
		
		$prog = catalog::getPrograms();
		$size = sizeof( $prog );
				
		for( $i = 0; $i < $size; $i++ )
			$this->mObjects[ sizeof( $this->mObjects ) ] = array( 'title' => $prog[ $i ][ 'title' ], 'link_title' => 'Go To View '.$prog[ $i ][ 'title' ], 'link' => Link::Build( 'program-info/'.$prog[ $i ][ 'program_id' ] ) );		
	}
	
	private function setSeasonsMenu()
	{
		$this->mLinkToAdd = Link::Build( 'index.php?action=addSeason' );
		$this->mLinkTitle = '+Add Season&raquo;';
		
		$season = seasonsModel::get();
		$size = sizeof( $season );
		
		for( $i = 0; $i < $size; $i++ )
			$this->mObjects[ sizeof( $this->mObjects ) ] = array( 'title' => $season[ $i ][ 'season' ].' '.$season[ $i ][ 'year' ], 'link_title' => 'Go to view '.$season[ $i ][ 'season' ].' '.$season[ $i ][ 'year' ], 'link' => Link::Build( 'index.php?tgp_season_id='.$season[ $i ][ 'id' ].'&action=season' ) );
	}
	
	private function setHolidaysMenu()
	{
		header( 'Location:index.php?action=holidays' );
		exit;
	}
	
	public function __destruct()
	{
		$this->mObjects = '';
		
	}
}
?>