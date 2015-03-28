<?php
class selectClass
{
	public $mClassID;
	public $mClassType;
	public $mClassPackageID;
	
	public function __construct( $classID, $classType, $classPackageID )
	{
		$this->mClassID = $classID;
		$this->mClassType = $classType;
		$this->mClassPackageID = $classPackageID;
	}
	public function printClass()
	{
		echo $this->mClassID.' '.$this->mClassType.' '.$this->mClassPackageID.'<br/>';
	}
}