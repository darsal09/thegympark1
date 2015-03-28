{load_presentation_object filename="registerToClass" assign="obj"}
<h1>Available class to register</h1>

{section name=i loop=$obj->mSeasons}
	<a href="{$obj->mSeasons[ i ].link}">{$obj->mSeasons[ i ].season} {$obj->mSeasons[ i ].year}</a> 
	{if $smarty.section.i.index < ( sizeof( $obj->mSeasons ) - 1 ) }
		::  
	{/if}
{/section}

{section name=i loop=$obj->mTitles}
<div>
	<h3>{$obj->mTitles[ i ].title} <span style="float:right;"><a  href="">&raquo;</a></span></h3>
	<div>
		{section name=k loop=$obj->mTitles[ i ].classes}
			<li><a href="javascript:show( {$obj->mTitles[ i ].classes[ k ].class_id} );">{$obj->mTitles[ i ].classes[ k ].weekday}s @ {$obj->mTitles[ i ].classes[ k ].start_time}&raquo; </a></li>
			<div id="{$obj->mTitles[ i ].classes[ k ].class_id}" style="display:none">
				&raquo; <a href="{$obj->mTitles[ i ].classes[ k ].link_full}">18 Weeks:</a> starting {date( 'D. M. jS, Y', strtotime( $obj->mTitles[ i ].classes[ k ].start_date ) )} to {date( 'D. M. jS, Y', strtotime( $obj->mTitles[ i ].classes[ k ].end_date ) )}<br/>
				&raquo; <a href="{$obj->mTitles[ i ].classes[ k ].link_first}">First 9 Weeks:</a> starting {date( 'D. M. jS, Y', strtotime( $obj->mTitles[ i ].classes[ k ].start_date ) )} to {date( 'D. M. jS, Y', strtotime( '+8 weeks', strtotime( $obj->mTitles[ i ].classes[ k ].start_date ) ) )}<br/>
				&raquo; <a href="{$obj->mTitles[ i ].classes[ k ].link_last}">Last 9 Weeks:</a> starting {date( 'D. M. jS, Y', strtotime( "+9 weeks", strtotime( $obj->mTitles[ i ].classes[ k ].start_date ) ) )} to {date( 'D. M. jS, Y', strtotime( $obj->mTitles[ i ].classes[ k ].end_date ) )}<br/>
			</div>
		{/section}
	</div>
</div>
{/section}

<script>

</script>