<?php
class cart
{
	public $mClasses;
	
	public function __construct()
	{
		if( shoppingCart::isEmpty() )
		{
			header( 'Location:'.Link::Build( '' ) );
			exit;
		}
		
		if( isset( $_POST[ 'tgp_cart_clear' ] ) )
			$this->clearCart();
			
		if( isset( $_POST[ 'tgp_cart_update' ] ) )
			$this->updateCart();
		
		if( isset( $_POST[ 'tgp_cart_checkout' ] ) )
			$this->checkout();
		
		$this->mClasses = shoppingCart::viewCart();
		$this->setTimeAndDays();
	}
	
	private function setTimeAndDays()
	{
		$size = sizeof( $this->mClasses );
		
		for( $i = 0; $i < $size; $i++ )
		{
			$this->mTotalPrice += intval( $this->mClasses[ $i ][ 'quantity' ] ) * intval( $this->mClasses[ $i ][ 'class_price' ] );
			$days_times =  explode( '/', $this->mClasses[ $i ][ 'class_days' ] );
			$this->mClasses[ $i ][ 'weekday' ] = "";
			
			if( $this->mClasses[  $i ][ 'package' ] != "" )
			{	
				$packageInfo = explode( '__', $this->mClasses[ $i ][ 'package' ] );
				$this->mClasses[ $i ][ 'package' ] = $packageInfo[ 0 ].' - '.$packageInfo[ 2 ];
			}
			
			for( $j = 0; $j < sizeof( $days_times ); $j++ )
			{
				list( $days, $times ) = explode( '__', $days_times[ $j] );
				$this->mClasses[ $i ][ 'weekday' ] .= $days.' - '.$times.'<br/>';
			}
		}
	}
	
	private function clearCart()
	{
		shoppingCart::emptyCart();
			
		header( 'Location:'.Link::Build( '' ) );
		exit;	
	}
	
	private function updateCart()
	{
		if( !isset( $_POST[ 'tgp_cart_update' ] ) )
			return;
			
		$ids = $_POST[ 'tgp_cart_ids' ];
		$quantities = $_POST[ 'tgp_cart_quantity' ];
			
		for( $i = 0; $i < sizeof( $ids ); $i++ )
			shoppingCart::updateClass( sanitize::sani( $ids[ $i ], 'INTIGER' ), sanitize::sani( $quantities[ $i ], 'INTIGER' ) );	
	}
	
	private function checkout()
	{
		if( !isset( $_POST[ 'tgp_cart_checkout' ] ) )
			return;
			
		header( 'Location:'.Link::Build( 'index.php?action=checkout' ) );
		exit;
	}
}
?>