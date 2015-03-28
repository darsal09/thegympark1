<?php
class Controller
{
	public $mP = array();
	public $mErrors = array();
	protected $_mRequired = array();
	
	public function __construct()
	{
		$this->setFields();
	}
	

	protected function hasErrors()
	{
		foreach( $this->mP AS $field => $value )
			if( $this->_mRequired[ $field ] && empty( $value ) )
					$this->mErrors[ $field ] = true;

		return in_array( true, $this->mErrors );
	}
	
	public function setFields()
	{
		foreach( $this->_mRequired AS $field => $value )
		{
			$this->mErrors[ $field ] = false;
			$this->mP[ $field ] = '';
		}
	}
	
	private function save()
	{
		
	}
	
	protected function __destruct()
	{
	
	}
	
}
?>