function hide( ids )
{
	document.getElementById( ids ).style.display = 'none';
}

function show( ids )
{
	document.getElementById( ids ).style.display = 'block';
}

Date.prototype.monthNames = [
    "January", "February", "March",
    "April", "May", "June",
    "July", "August", "September",
    "October", "November", "December"
];

Date.prototype.getMonthName = function() 
								{
									return this.monthNames[this.getMonth()];
								};

Date.prototype.getShortMonthName = function () 
									{
										return this.getMonthName().substr(0, 3);
									};

function matchWeekday( wdaySRC, dateSRC )
{
	weekdays = [ 'Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday' ];
	
	weekday = document.getElementById( wdaySRC ).value;
	
	dates  = explode( '-', document.getElementByID( dateSRC ).value );
	
	nDate = new Date( dates[ 0 ], dates[ 1 ], dates[ 2 ] );
	
	if( weekday == weekdays[ nDate.getDay() ] )
		return;
	
	alert( "The weekday you choose does not match the start date weekday, so the weekday chosen above has changed to match the start date" );
	
	document.getElementById( wdaySRC ).value = weekdays[ nDate.getDay() ];
}

function matchStartEndDate( sdateSRC, edateSRC )
{
	weekdays = [ 'Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday' ];
		
	dates  = explode( '-', document.getElementByID( dateSRC ).value );
	
	sDate = new Date( sdate[ 0 ], sdate[ 1 ], sdate[ 2 ] );
	
	eDate = new Date( edate[ 0 ], edates[ 1 ], edate[ 2 ] );
	
	if( sDate.getDay() == eDate.getDay() )
		return;
		
	alert( "The start date should have the same weekday as the end date" );
}

function goTo( page)
{
	//open( page );
	document.location.href = page;
}

	function printOptions( options, address )
	{
		address = '';
		
		switch( options )
		{
			case 'Age':
				writeAgeOptions();
				break;

			case 'Day':
				writeDays();
				break;
				
			case 'Class':
				getResults( 'options', 'CLASS', address + 'getClasses.php' );
				break;
				
			case 'Category':
				getResults( 'options', 'CATEGORY', address + 'getCategories.php' );
				break;
				
			case 'Program':
				getResults( 'options', 'PROGRAM', address + 'getPrograms.php' );
				break;
				
			case 'Class Title':
				getResults( 'options', 'classTitle', address + 'getClassTitles.php' );
				break;
			
			case 'Single':
				writeSingle();
				break;
				
			case 'Seasons':
				getResults( 'options', 'SEASON', address + 'getSeason.php' );
				break;
				
			case 'Time':
				writeTime();
				break;
				
			case 'Month':
				writeMonthOptions();
				break;
							
			case 'Newsletter Categories':
				getResults( 'options', 'NEWSLETTER', address + 'getNewsletterCategories.php' );
				break;
				
			default:
				break;
		}		
	}
	
	function writeAgeOptions()
	{
		var inputs = '<p>Write down the age range you want to send info to: </p>';
		//inputs += '<p><label>Seasons</label><br/> <select name=seasons><option value="">==Select A season==</option><option value="C">Current Season</option><option value="L">Last Season</option><option value="A">All Seasons</option></select></p>';
		inputs += '<p> from <input type=text style="width:50px;" name="tgp_age_start" value="5"> years of age to <input type=text style="width:50px;" name="tgp_age_end" value="10"> years of age</p>';
		
		document.getElementById( 'options' ).innerHTML = inputs;
	}

	function writeDays()
	{
		var days = new Array( 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday' );
		var inputs = '<p>This filter sends info to people who are taking or took classes on the days you select below:</p>';
		//inputs += '<p><label>Seasons</label><br/> <select name=seasons><option value="">==Select A Season==</option><option value="Current">Current Season</option><option value="Last">Last Season</option><option value="All">All Seasons</option></select></p>';
		
		for( var i = 0; i < days.length; i++ )
			inputs += '<input type=checkbox name="tgp_newsletter_days[]" value="'+days[ i ]+'">'+ days[ i ] +'<br/>';
			
		document.getElementById( 'options' ).innerHTML = inputs;
	}
	
	function writeSingle()
	{
		var inputs = '<p><label>Name</label><br/><input type=text name="tgp_filter_single_name" value=""></p><p><label>Email</label><br/><input type=text name="tgp_filter_single_email" value=""></p>';
		
		document.getElementById( 'options' ).innerHTML = inputs;
	}
	
	function writeTime()
	{
		//var inputs = '<p><label>Seasons</label><br/> <select name=seasons onChange=""><option value="">==Select A Season==</option><option value="C">Current Season</option><option value="L">Last Season</option><option value="A">All Seasons</option></select></p>';
		var inputs = '<p><label>Start Time</label><br/>';
		inputs += '<select name="tgp_filter_start_time">';
			inputs += '<option value="04:00:00">4am</option>';
			inputs += '<option value="05:00:00">5am</option>';
			inputs += '<option value="06:00:00">6am</option>';
			inputs += '<option value="07:00:00">7am</option>';
			inputs += '<option value="08:00:00">8am</option>';
			inputs += '<option value="09:00:00">9am</option>';
			inputs += '<option value="10:00:00">10am</option>';
			inputs += '<option value="11:00:00">11am</option>';
			inputs += '<option value="12:00:00">12pm</option>';
			inputs += '<option value="13:00:00">1pm</option>';
			inputs += '<option value="14:00:00">2pm</option>';
			inputs += '<option value="15:00:00">3pm</option>';
			inputs += '<option value="16:00:00">4pm</option>';
			inputs += '<option value="17:00:00">5pm</option>';
			inputs += '<option value="18:00:00">6pm</option>';
			inputs += '<option value="19:00:00">7pm</option>';
			inputs += '<option value="20:00:00">8pm</option>';
			inputs += '<option value="21:00:00">9pm</option>';
			inputs += '<option value="22:00:00">10pm</option>';
		inputs +='</select></p>';
		
		inputs += '<p><label>End Time</label><br/>';
		inputs += '<select name="tgp_filter_end_time">';
			inputs += '<option value="05:00:00">5am</option>';
			inputs += '<option value="06:00:00">6am</option>';
			inputs += '<option value="07:00:00">7am</option>';
			inputs += '<option value="08:00:00">8am</option>';
			inputs += '<option value="09:00:00">9am</option>';
			inputs += '<option value="10:00:00">10am</option>';
			inputs += '<option value="11:00:00">11am</option>';
			inputs += '<option value="12:00:00">12pm</option>';
			inputs += '<option value="13:00:00">1pm</option>';
			inputs += '<option value="14:00:00">2pm</option>';
			inputs += '<option value="15:00:00">3pm</option>';
			inputs += '<option value="16:00:00">4pm</option>';
			inputs += '<option value="17:00:00">5pm</option>';
			inputs += '<option value="18:00:00">6pm</option>';
			inputs += '<option value="19:00:00">7pm</option>';
			inputs += '<option value="20:00:00">8pm</option>';
			inputs += '<option value="21:00:00">9pm</option>';
			inputs += '<option value="22:00:00">10pm</option>';
			inputs += '<option value="23:00:00">11pm</option>';
			inputs += '<option value="24:00:00">12am</option>';
			inputs += '</select></p>';
			
		document.getElementById( 'options' ).innerHTML = inputs;
	}
	
	/*
		Helps to set up the birthday capability
	*/
	function writeMonthOptions()
	{
		var d = new Date();
		
		var inputs = '<p>This filter is used to send info to people who are having a birthday within the following months from the current month:</p>';
		inputs += '<p><i><b>Starting from</b></i> <select name="tgp_newsletter_month_start"></p>';
		
		for( var i = 0; i < 12; i++ )
			inputs += '<option value="'+i+'">'+i+' month(s) from '+ d.getMonthName() +'  </option>';
		
		inputs += '</select> ';
		
		inputs += ' <i><b>up to</b></i> <select name="tgp_newsletter_month_end">';
		
		for( var i = 1; i < 12; i++ )
			inputs += '<option value="'+i+'">'+i+' month(s) from '+d.getMonthName()+' </option>';
			
		inputs += '</select></p>';
		
		document.getElementById( 'options' ).innerHTML = inputs;		
	}
		
	function getResults( ids, types, page )
	{
		document.getElementById( ids ).innerHTML = "<p>getting filter info...</p>";

		if (window.XMLHttpRequest)
			xmlhttp=new XMLHttpRequest();
		else
			xmlhttp=new ActiveXObject( "Microsoft.XMLHTTP" );
	 
		xmlhttp.onreadystatechange = function()
		{
			if( xmlhttp.readyState == 4 && xmlhttp.status == 200 )
			{			
				var x = xmlhttp.responseXML.documentElement.getElementsByTagName( types );
				var inputs = '';
				
				if( x.length == 0 )
					document.getElementById( ids ).innerHTML = "There are no "+types+"s in the system.";
				else
					document.getElementById( ids ).innerHTML = '<p>Select the '+ types.toLowerCase() +' to get the members you would like to send info to.</p><table><tr>';					
/*				
				if( types != "CLASS" )
					document.getElementById( ids ).innerHTML += '<p><label>Seasons</label><br/> <select name="seasons"><option value="">==Select A Season==</option><option value="Current">Current Season</option><option value="Last">Last Season</option><option value="All">All Seasons</option></select></p>';

				{
					page = 'getClasses.php?seasons=';
					document.getElementById( ids ).innerHTML += '<p><label>Seasons</label><br/> <select name="seasons" onChange="getResults( ' + ids + ' , ' +types+',' + page + this.value + ');"><option value="">==Select A Season==</option><option value="C">Current Season</option><option value="L">Last Season</option><option value="A">All Seasons</option></select></p>';
				}
				else

*/
				for( var i = 0; i < x.length; i++ )
				{
					var ageGroup = '';
					var title = '';
					var rID = 0;
					
					var xx 	= x[i].getElementsByTagName( "ID" );
					
					rID = parseInt( xx[0].firstChild.nodeValue );
					
					xx = x[i].getElementsByTagName( "TITLE" );
					title = xx[ 0 ].firstChild.nodeValue;
					
					if( types == "CLASS" || types == "classTitle" )
					{
						xx = x[i].getElementsByTagName( "AGEGROUP" );						
						ageGroup = xx[ 0 ].firstChild.nodeValue;					
					}
					
					name = 'tgp_' + types.toLowerCase() + '[]';
						
					document.getElementById( ids ).innerHTML += '<input type=checkbox name="' + name + '" value="' + rID + '"> ' + title + ' ' + ageGroup + '<br/>';
				}						
			}
		}
		xmlhttp.open( "GET", page, true);
		xmlhttp.send();	
	}
