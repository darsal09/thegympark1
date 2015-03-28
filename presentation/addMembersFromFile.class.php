<?php
class addMembersFromFile
{

	public function __construct()
	{
		if( isset( $_POST[ 'tgp_save_file' ] ) )
			$this->saveMembers();
	}
	
	public function init()
	{
	
	}
	
	public function saveMembers()
	{
		$file = $_FILES[ 'tgp_file_name' ][ 'tmp_name' ];
		
		$fp = fopen( $file, 'r');
/*				
		$sql = 'INSERT INTO 
				tgp_users( uName, uEmail, type )
				VALUES( :name, :email, :type )';
*/
		//$theData = fgets( $fp );		
		
		$i = 0;
		
		while( !feof( $fp ) )
		{
			$data[] = fgets( $fp, 1024 );
			$csv_array = explode( ",", $data[ $i ] );
				
			$params = array();
			$params[':mName'] = sanitize::sani( $csv_array[ 0 ], 'STRING' );
			$params[ ':mEmail' ] = sanitize::sani( $csv_array[ 1 ], 'EMAIL' );
			$params[ ':cID' ] = 1;
			print_r( $params );
			echo '<br/>';
			newsletters::addNewMember( $params[ ':mName' ], $params[ ':mEmail' ] );			
			$i++;
		}
		
		fclose($fp);	
	}

}
?>