
function onBlur( inputs )
{
	if( inputs.value == '' ) 
	{
		inputs.value = 'Search Our Website...';
	}
}

function onFocus( inputs )
{
	if( inputs.value == 'Search Our Website...' ) 
	{
		inputs.value = '';
	}
}