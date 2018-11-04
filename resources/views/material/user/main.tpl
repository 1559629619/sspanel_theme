<!DOCTYPE html>
<html lang="zh-cn">
<head>
	<meta charset="UTF-8">
	<meta content="IE=edge" http-equiv="X-UA-Compatible">
	<meta content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no, width=device-width" name="viewport">
	<meta name="theme-color" content="#ff9800">
	<title>{$config["appName"]}</title>

  
  <!-- css -->
	<link href="/theme/material/css/base.css" rel="stylesheet">
   <link href="/theme/material/css/dashbord.css" rel="stylesheet">
	<link href="/theme/material/css/project.css" rel="stylesheet">
  
   <link href="/theme/material/css/bootstrap.min.css" rel="stylesheet">
  	 <link href="/theme/material/css/material-dash.css" rel="stylesheet">
   <link href="/theme/material/css/components.css" rel="stylesheet">
  
  <link href="//at.alicdn.com/t/font_650699_vqaiw3v99k162yb9.css" rel="stylesheet">
  <!-- style0 -->
 <!--   <link href="/assets/css/pricing.css" rel="stylesheet"> -->
    <link href="/theme/material/css/pricing1.css" rel="stylesheet">
	<link href="//fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
   <link href="//fonts.googleapis.com/css?family=Roboto:400,700,300" rel="stylesheet">
<!-- css 
	<link href="/theme/material/css/base.min.css" rel="stylesheet">
  	<link href="/theme/material/css/dashbord.css" rel="stylesheet">
	<link href="/theme/material/css/project.css" rel="stylesheet">
	
  
  	 <link href="/theme/material/css/bootstrap.min.css" rel="stylesheet">
	 <link href="/theme/material/css/material-dash.css" rel="stylesheet">
     <link href="/theme/material/css/components.css" rel="stylesheet">
   <link href="//at.alicdn.com/t/font_650699_vqaiw3v99k162yb9.css" rel="stylesheet">
  <link href="/theme/material/css/pricing1.css" rel="stylesheet">
	<link href="//fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
   <link href="//fonts.googleapis.com/css?family=Roboto:400,700,300" rel="stylesheet">
	
	-->

  <style>
#fire{
text-align: left;
margin: 10px auto;
font-family: "Comic Sans MS";
font-size: 16px;
color: yellow;
text-shadow: 0px -2px 0px #333, 0px 2px 3px #666, 0 0 20px #fefcc9, 10px -10px 30px #feec85, -20px -20px 40px #ffae34, 20px -40px 50px #ec760c, -20px -60px 60px #cd4606, 0 -80px 70px #973716, 10px -90px 80px #451b0e;
}
  
#fire-red{
text-align: left;
margin: 10px auto;
font-family: "Comic Sans MS";
font-size: 16px;
color: #DC143C;
}
  
#fire-other{
text-align: left;
margin: 10px auto;
font-family: "Comic Sans MS";
font-size: 16px;
color: #51EA19;
text-shadow: 0px 1px 0px #000, 1px 2px 3px #666;
}
  
.i-button {
	margin: auto;
	padding: 10px;
	text-transform: uppercase;
	color: #fafafa;
	background-color: #ffa726;
	border: none;
	border-radius: 3px;
	box-shadow: 1px 1px 10px rgba(50, 50, 50, 0.4);
	transition: .3s all ease;
	letter-spacing: .1rem;
	font-size: 15px;
	position: relative;
	top: 0;
	right: 0;
	padding-left: 2.5rem;
}

.i-button a{
  color: white;
  font-weight: 500;
  font-size: 15px;
  
}
  

.button-check{
  background-color: #66bb6a;
  margin-left: 2rem;
  font-weight: 500;
  font-size: 15px;
  
}

.i-button[disabled]{
  border-color: transparent;
  -webkit-box-shadow: none;
          box-shadow: none;
  cursor: not-allowed;
}
  
.i-button:after, .i-button:before {
	position: absolute;
	font-family: 'Barrio', sans-serif;
	font-weight: bold;
	font-size: 15px;
	color: #006b34;
	transition: .3s all ease;
}

.i-button:before {
	content: '_';
	position: absolute;
	left: 1.6rem;
	top: .9rem;
}

.i-button:after {
	content: '>';
	position: absolute;
	left: .9rem;
	top: 1rem;
}

.i-button:hover {
	box-shadow: 1px 1px 20px rgba(150, 150, 150, 0.2);
	top: -.1rem;
	right: -.1rem;
	cursor: pointer;
}

.i-button:hover:before {
	content: '_';
	position: absolute;
	left: .9rem;
	top: .2rem;
	transform: translateY(-1px);
}

.i-button:hover:after {
	content: '>';
	position: absolute;
	left: 1.1rem;
	top: 0.6rem;
}
  .page-orange .ui-content-header {
			background-image: url(/theme/material/css/images/bg/amber.jpg);
		}
  
</style>



</head>
<body class="page-orange">
	<header class="header header-orange header-transparent header-waterfall ui-header">
		<ul class="nav nav-list pull-left">
			<div>
				<a data-toggle="menu" href="#ui_menu">
					<span class="icon icon-lg text-white">format_align_justify</span>
				</a>
			</div>
		</ul>

		<ul class="nav nav-list pull-right">
			<div class="dropdown margin-right">
				<a class="dropdown-toggle padding-left-no padding-right-no" data-toggle="dropdown">
				{if $user->isLogin}
					<span class="access-hide">{$user->user_name}</span>
              	    <span class="icon icon-cd margin-right">account_circle</span>
					</a>
					<ul class="dropdown-menu dropdown-menu-right">
						<li>
							<a class="padding-right-lg waves-attach" href="/user/"><span class="icon icon-lg margin-right">account_box</span>用户中心</a>
						</li>

						<li>
							<a class="padding-right-cd waves-attach" href="/user/logout"><span class="icon icon-lg margin-right">exit_to_app</span>登出</a>
						</li>
					</ul>
				{else}
					<span class="access-hide">未登录</span>
             		 <span class="icon icon-lg margin-right">account_circle</span>
					<ul class="dropdown-menu dropdown-menu-right">
						<li>
							<a class="padding-right-lg waves-attach" href="/auth/login"><span class="icon icon-lg margin-right">account_box</span>登录</a>
						</li>
						<li>
							<a class="padding-right-lg waves-attach" href="/auth/register"><span class="icon icon-lg margin-right">pregnant_woman</span>注册</a>
						</li>
					</ul>
				{/if}

			</div>
		</ul>
	</header>
	<nav aria-hidden="true" class="menu menu-left nav-drawer nav-drawer-md" id="ui_menu" tabindex="-1">
		<div class="menu-scroll">
			<div class="menu-content">
				<a class="menu-logo" href="/"><i class="icon icon-lg" >language</i>&nbsp;{$config["appName"]}</a>
				<ul class="nav">
					<li>
						<a class="waves-attach" data-toggle="collapse" href="#ui_menu_me">我的</a>
						<ul class="menu-collapse collapse in" id="ui_menu_me">
							<li>
								<a href="/user">
									<i class="icon icon-lg">account_balance_wallet</i>&nbsp;用户中心
								</a>
							</li>


							<li>
								<a href="/user/profile">
									<i class="icon icon-lg">account_box</i>&nbsp;返利记录
								</a>
							</li>

							<li>
								<a href="/user/edit">
									<i class="icon icon-lg">sync_problem</i>&nbsp;资料编辑
								</a>
							</li>


                               <li>
								<a href="/user/invite">
									<i class="icon icon-lg">loyalty</i>&nbsp;邀请链接
								</a>
							</li>
							





						</ul>


						<a class="waves-attach" data-toggle="collapse" href="#ui_menu_use">使用</a>
						<ul class="menu-collapse collapse in" id="ui_menu_use">
							<li>
								<a href="/user/node">
									<i class="icon icon-lg">airplanemode_active</i>&nbsp;节点列表
								</a>
							</li>
<!--
						<li>
								<a href="/user/lookingglass">
									<i class="icon icon-lg">visibility</i>&nbsp;延迟检测
								</a>
								
							</li>
-->
							<li>
								<a href="/user/trafficlog">
									<i class="icon icon-lg">hourglass_empty</i>&nbsp;流量记录
								</a>
							</li>

							
						</ul>

						

						

						<a class="waves-attach" data-toggle="collapse" href="#ui_menu_help">商店</a>
						<ul class="menu-collapse collapse in" id="ui_menu_help">
                          	<li>
								<a href="/user/code">
									<i class="icon icon-lg">code</i>&nbsp;充值
								</a>
							</li>

							<li>
								<a href="/user/shop">
									<i class="icon icon-lg">shop</i>&nbsp;套餐购买
								</a>
							</li>

							<li><a href="/user/bought"><i class="icon icon-lg">shopping_cart</i>&nbsp;购买记录</a></li>




                          {if $config['enable_donate']=='true'}
							<li>
								<a href="/user/donate">
									<i class="icon icon-lg">attach_money</i>&nbsp;捐赠公示
								</a>
							</li>
							{/if}

						</ul>


						{if $user->isAdmin()}
							<li>
								<a href="/admin">
									<i class="icon icon-lg">person_pin</i>&nbsp;管理面板
								</a>
							</li>
						{/if}
                                          	{if $can_backtoadmin}
                                         	    <li>
                                <a class="padding-right-cd waves-attach" href="/user/backtoadmin"><span class="icon icon-lg margin-right">backtoadmin</span>返回管理员身份</a>
                                                    <li>
                                                {/if}


					</li>
				</ul>
			</div>
		</div>
	</nav>

{if $config["enable_crisp"] == 'true'}{include file='crisp.tpl'}{/if}
