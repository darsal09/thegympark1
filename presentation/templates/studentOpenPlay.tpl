{load_presentation_object filename="studentOpenPlay" assign="obj"}

{section name=i loop=$obj->mOpenPlays}
	<p><a href="{$obj->mOpenPlays[ i ].link}">{$obj->mOpenPlays[ i ].title}</a>
		{section name=j  loop=$obj->mOpenPlays[ i ]}
			
		{/section}
	</p>
{sectionelse}
	<p>There are no open plays for this student yet! <a href="{$obj->mLinkToAddOpenPlayToStudent}">+Add Open Play&raquo;</a></p>
{/section}
