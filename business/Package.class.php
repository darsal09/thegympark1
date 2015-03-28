<?php
class Package
{
	public $mID, $mTitle, $mPrice, $mAmount, $mType, $mLink, $mValid, $mOptions;
	
	public function __construct( $mP )
	{
		if( array_key_exists( ':pOPID', $mP ) )
			$this->setParameters( $mP );
		else
			$this->defineVariables( $mP );
	}
	
	public function getValid()
	{
		return $this->mValid;
	}
	
	public function getOptions()
	{
		return $this->mOptions;
	}
	
	public function getTitle()
	{
		return $this->mTitle;
	}
	public function getPrice()
	{
		return $this->mPrice;
	}
	
	public function getAmount()
	{
		return $this->mAmount;
	}
	
	public function getType()
	{
		return $this->mType;
	}

	public function getID()
	{
		return $this->mID;
	}
	public function setParameters( $mP )
	{
		$p = PackageModel::get( $mP );
		
		$this->defineVariables( $p );
	}
	
	public function getLink()
	{
		return $this->mLink;
	}
	private function defineVariables( $p )
	{		
		$this->mArray = $p;
		
		foreach( $p AS $field => $value )
		{	
			$methodName = 'set'.ucfirst( $field );
			$this->{$methodName}( $value );
		}
	}
	
	public function setTitle( $title )
	{
		$this->mTitle = $title;
	}
	
	public function setID( $mID )
	{
		$this->mID = $mID;
	}
	
	
	public function setPrice( $price )
	{
		$this->mPrice = $price;
	}
	
	public function setAmount( $amount )
	{
		$this->mAmount = $amount;
	}
	
	public function setType( $type )
	{
		$this->mType = $type;
	}
	public function setValid( $amount )
	{
		$this->mValid = $amount;
	}
	public function setOptions( $option )
	{
		$this->mOptions = $option;
	}
	public function setLink( $link )
	{
		$this->mLink = $link;
	}
	
	public function getArray()
	{
		return $this->mArray;
	}
}
?>