{load_presentation_object filename="menu" assign="obj"}
				<div class="navbar navbar-inverse navbar-static-top navbar-hack" role="navigation">
			<a class="navbar-brand" href="#"><img src="http://localhost/thegympark/images/gp_symbol.png"></a>
					<div class="container">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</div>
					<div class="navbar-collapse collapse">
						<ul class="nav navbar-nav">
								{if !$obj->mEmptyCart}
									<a href="{$obj->mLinkToCart}">view cart</a>|
								{/if}
								{if $obj->mLogIn}
									<a href="{$obj->mLinkToMyAccount}">My account</a>|
									<a href="{$obj->mLinkToMyHomePage}">My main</a>|
									<a href="{$obj->mLinkToLogOff}">Log off</a>
								{else}
									<li><a href="{$obj->mLinkToSignIn}">Log in</a></li>
								{/if}
								
								<li><a href="{$obj->mLinkToIndex}">Home</a></li>
								<li><a href="{$obj->mLinkToClassSchedule}">Class Schedule</a></li>
								<li><a href="{$obj->mLinkToProgram}">Programs</a></li>
								<li><a href="">Birthday Parties</a></li>
								<li><a href="{$obj->mLinkToMembership}">Memberships</a></li>
								<li><a href="{$obj->mLinkToEtiquette}">Etiquette</a></li>
								
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
									<ul class="dropdown-menu">
										<li><a href="http://localhost/laravel/public/users/register">Register&raquo;</a></li>
										<li><a href="#">Another action</a></li>
										<li><a href="#">Something else here</a></li>
										<li class="divider"></li>
										<li class="dropdown-header">Nav header</li>
										<li><a href="#">Separated link</a></li>
										<li><a href="#">One more separated link</a></li>
									</ul>
							</li>
						</ul>
					</div>
				</div>
