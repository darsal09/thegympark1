{load_presentation_object filename="lists" assign="obj"}	
<h1>List</h1>
<p>
	Information about the list will go here
</p>
<h2>Growth History</h2>
<table>
<thead>
	<tr><th> Month</th><th>Existing</th><th>Imports</th><th>Optins</th></tr>
</thead>
<tbody>
{$size = sizeof( $obj->mHistory )}
{for $i = 0; $i < $size; $i++}
	<tr><td>{date( 'F Y', strtotime( $obj->mHistory[ $i ][ 'month' ] ) )}</td><td>{$obj->mHistory[ $i ][ 'existing' ]}</td><td>{$obj->mHistory[ $i ][ 'imports' ]}</td><td>{$obj->mHistory[ $i ][ 'optins' ]}</td></tr>
{/for}
</tbody>
</table>
<p>&nbsp;</p>

<h2>Members</h2>
<p><a href="{$obj->mLinkToAddMember}">Add Member</a></p>
<table>
<thead>
	<tr><th>#</th><th>Email</th><th>Time Stamp</th><th>Options</th></tr>
</thead>
<tbody>
{$size = sizeof( $obj->mList[ 'data' ] )}

{for $i = 0; $i < $size; $i++ }
 	<tr><td>{$i + 1}.</td><td>{$obj->mList[ 'data' ][ $i ][ 'email' ]}</td><td>{date( 'h:ia D M jS, Y', strtotime( $obj->mList[ 'data' ][ $i ][ 'timestamp' ] ) )}</td><td><a href="{$obj->mList[ 'data' ][ $i ].remove}" title="click to remove from list">Remove From List&raquo;</a> <a href="{$obj->mList[ 'data' ][ $i ].update}" title="click to update member">Update&raquo;</a></td></tr>
{/for}
</tbody>
</table>