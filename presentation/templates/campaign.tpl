{load_presentation_object filename="campaign" assign="obj"}
<h1>Statistics</h1>
<table>
<thead>
	<tr><th>Variable</th><th>Value</th></tr>
</thead>

{foreach $obj->mCampaign AS $c => $v }
	{if !is_array( $v )}
		<tr><td>{$c}</td><td>{$v}</td></tr>
	{else}
		{$c}
	{/if}
{/foreach}

</table>
<p>&nbsp;</p>
		<table>
		<thead>
			<tr><th>Time Stamp</th><th>Emails Sent</th><th>Unique Opens</th><th>Recipients Clicks</th></tr>
		</thead>
		{$size = sizeof( $obj->mCampaign.timeseries )}
		
		<tbody>
		{for $i = 0; $i < $size; $i++}
		<tr><td>{date( 'h:ia D M jS, Y', strtotime( $obj->mCampaign.timeseries[ $i ][ 'timestamp' ]) )}</td><td>{$obj->mCampaign.timeseries[ $i ][ 'emails_sent' ]}</td><td>{$obj->mCampaign.timeseries[ $i ][ 'unique_opens' ]}</td><td>{$obj->mCampaign.timeseries[ $i ][ 'recipients_click' ]}</td></tr>
		{/for}
		</tbody>
		
		</table>
