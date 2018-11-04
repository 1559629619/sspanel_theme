


{include file='user/main.tpl'}

<style>.kaobei {
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
}

.kaobei:hover {
    background-color: #ff7ffe; /* prink */
    color: white;
}</style>

	<main class="content">
		<div class="content-header ui-content-header">
			<div class="container">
				<h1 class="content-heading">修改资料</h1>
			</div>
		</div>
		<div class="container">
			<section class="content-inner margin-top-no">
             


					<div class="col-lg-6 col-md-6">
						<div class="card margin-bottom-no">
							<div class="card-main">
								<div class="card-inner">
									<div class="card-inner">
										<br><p class="card-heading card-heading-orange">账号登录密码修改</p>
										<div class="form-group form-group-label">
											<label class="floating-label" for="oldpwd">当前密码</label>
											<input class="form-control" id="oldpwd" type="password">
										</div>

										<div class="form-group form-group-label">
											<label class="floating-label" for="pwd">新密码</label>
											<input class="form-control" id="pwd" type="password">
										</div>

										<div class="form-group form-group-label">
											<label class="floating-label" for="repwd">确认新密码</label>
											<input class="form-control" id="repwd" type="password">
										</div>
									</div>
									<div class="card-action">
										<div class="card-action-btn pull-left">
											<button class="btn btn-flat waves-attach" id="pwd-update" ><span class="icon">check</span>&nbsp;提交</button>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="card margin-bottom-no">
							<div class="card-main">
								<div class="card-inner">
									<div class="card-inner">
										<br><p class="card-heading card-heading-orange">节点连接密码修改</p>
										<p>当前连接密码：<code id="ajax-user-passwd">{$user->passwd}</code><button class="kaobei copy-text btn btn-subscription" type="button" data-clipboard-text="{$user->passwd}">点击拷贝</button></p>
										<div class="form-group form-group-label">
											<label class="floating-label" for="sspwd">新连接密码</label>
											<input class="form-control" id="sspwd" type="text">
										</div>

									</div>
									<div class="card-action">
										<div class="card-action-btn pull-left">
											<button class="btn btn-flat waves-attach" id="ss-pwd-update" ><span class="icon">check</span>&nbsp;提交</button>
										</div>
									</div>
								</div>
							</div>
						</div>
                      
                    
                      


						

						<div class="card margin-bottom-no">
							<div class="card-main">
								<div class="card-inner">
									<div class="card-inner">
										<br><p class="card-heading card-heading-orange">联络方式修改</p>
										<p>当前联络方式：
										<code id="ajax-im">
										{if $user->im_type==1}
										微信
										{/if}

										{if $user->im_type==2}
										QQ
										{/if}

										{if $user->im_type==3}
										Google+
										{/if}

										{if $user->im_type==4}
										Telegram
										{/if}
										{$user->im_value}
										</code>
										</p>
										<div class="form-group form-group-label">
											<label class="floating-label" for="imtype">选择您的联络方式</label>
											<select class="form-control" id="imtype">
												<option></option>
												<option value="1">微信</option>
												<option value="2">QQ</option>
												<option value="3">Google+</option>
												<option value="4">Telegram</option>
											</select>
										</div>

										<div class="form-group form-group-label">
											<label class="floating-label" for="wechat">在这输入联络方式账号</label>
											<input class="form-control" id="wechat" type="text">
										</div>

									</div>
									<div class="card-action">
										<div class="card-action-btn pull-left">
											<button class="btn btn-flat waves-attach" id="wechat-update" ><span class="icon">check</span>&nbsp;提交</button>
										</div>
									</div>
								</div>
							</div>
						</div>



						







						
					</div>  


					<div class="col-lg-6 col-md-6">

						
	

						<div class="card margin-bottom-no">
							<div class="card-main">
								<div class="card-inner">
									<div class="card-inner">
										<br><p class="card-heading card-heading-orange">每日邮件接收设置</p>
										<p>当前设置：<code id="ajax-mail">{if $user->sendDailyMail==1}发送{else}不发送{/if}</code></p>
										<div class="form-group form-group-label">
											<label class="floating-label" for="mail">发送设置</label>
											<select id="mail" class="form-control">
												<option value="1">发送</option>
												<option value="0">不发送</option>
											</select>
										</div>
									</div>
									<div class="card-action">
										<div class="card-action-btn pull-left">
											<button class="btn btn-flat waves-attach" id="mail-update" ><span class="icon">check</span>&nbsp;提交</button>
										</div>
									</div>
								</div>
							</div>
						</div>



						
						{if $config['port_price']>=0 || $config['port_price_specify']>=0}
						<div class="card margin-bottom-no">
							<div class="card-main">
								<div class="card-inner">
									{if $config['port_price']>=0}
									<div class="card-inner">
										<br><p class="card-heading card-heading-orange">重置端口</p>
										<p>对号码不满意？来摇号吧～！</p>
										<p>随机更换一个端口使用，价格：<code>{$config['port_price']}</code>元/次</p>
										<p>重置后1分钟内生效</p>
										<p>当前端口：<code id="ajax-user-port">{$user->port}</code></p>
									</div>
									<div class="card-action">
										<div class="card-action-btn pull-left">
											<button class="btn btn-flat waves-attach" id="portreset" ><span class="icon">check</span>&nbsp;摇号</button>
										</div>
									</div>
									{/if}

									{if $config['port_price_specify']>=0}
									<div class="card-inner">
										<br><p class="card-heading card-heading-orange">钦定端口</p>
										<p>不想摇号？来钦定端口吧～！</p>
										<p>价格：<code>{$config['port_price_specify']}</code>元/次</p>
										<p>端口范围：<code>{$config['min_port']}～{$config['max_port']}</code></p>
										<div class="form-group form-group-label">
											<label class="floating-label" for="port-specify">在这输入想钦定的号</label>
											<input class="form-control" id="port-specify" type="num">
										</div>
									</div>
									<div class="card-action">
										<div class="card-action-btn pull-left">
											<button class="btn btn-flat waves-attach" id="portspecify" ><span class="icon">check</span>&nbsp;钦定</button>
										</div>
									</div>
									{/if}
								</div>
							</div>
						</div>
						{/if}

						
						{if $config['enable_telegram'] == 'true'}
						<div class="card margin-bottom-no">
							<div class="card-main">
								<div class="card-inner">
									<div class="card-inner">
										<br><p class="card-heading card-heading-orange">Telegram 绑定</p>
										<p>Telegram 添加机器人账号 <a href="https://t.me/{$telegram_bot}">@{$telegram_bot}</a>，拍下下面这张二维码发给它。</p>
										<div class="form-group form-group-label">
											<div class="text-center">
												<div id="telegram-qr"></div>
												{if $user->telegram_id != 0}当前绑定：<a href="https://t.me/{$user->im_value}">@{$user->im_value}</a>{/if}
											</div>
										</div>

									</div>
									<div class="card-action">
										<div class="card-action-btn pull-left">
											<a class="btn btn-brand-accent btn-flat waves-attach" href="/user/telegram_reset" ><span class="icon">format_color_reset</span>&nbsp;解绑</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						{/if}
					</div>




					{include file='dialog.tpl'}

			</section>
		</div>
	</main>







{include file='user/footer.tpl'}

<script>
$(function(){
	new Clipboard('.copy-text');
});

$(".copy-text").click(function () {
	$("#result").modal();
	$("#msg").html("已复制到您的剪贴板。");
});
</script>

<script>
    $(document).ready(function () {
        $("#portreset").click(function () {
            $.ajax({
                type: "POST",
                url: "resetport",
                dataType: "json",
                data: {

                },
                success: function (data) {
                    if (data.ret) {
                        $("#result").modal();
						$("#ajax-user-port").html(data.msg);
						$("#msg").html("设置成功，新端口是"+data.msg);
						
                    } else {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    }
                },
                error: function (jqXHR) {
                    $("#result").modal();
					$("#msg").html(data.msg+"     出现了一些错误。");
                }
            })
        })
    })
</script>
<script>
    $(document).ready(function () {
        $("#portspecify").click(function () {
            $.ajax({
                type: "POST",
                url: "specifyport",
                dataType: "json",
                data: {
					port: $("#port-specify").val()
                },
                success: function (data) {
                    if (data.ret) {
                        $("#result").modal();
						$("#ajax-user-port").html($("#port-specify").val());
						$("#msg").html(data.msg);
                    } else {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    }
                },
                error: function (jqXHR) {
                    $("#result").modal();
					$("#msg").html(data.msg+"     出现了一些错误。");
                }
            })
        })
    })
</script>
<script>
    $(document).ready(function () {
        $("#setpac").click(function () {
            $.ajax({
                type: "POST",
                url: "pacset",
                dataType: "json",
                data: {
                   pac: $("#pac").val()
                },
                success: function (data) {
                    if (data.ret) {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    } else {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    }
                },
                error: function (jqXHR) {
                    $("#result").modal();
					$("#msg").html(data.msg+"     出现了一些错误。");
                }
            })
        })
    })
</script>

<script>
    $(document).ready(function () {
        $("#pwd-update").click(function () {
            $.ajax({
                type: "POST",
                url: "password",
                dataType: "json",
                data: {
                    oldpwd: $("#oldpwd").val(),
                    pwd: $("#pwd").val(),
                    repwd: $("#repwd").val()
                },
                success: function (data) {
                    if (data.ret) {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    } else {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    }
                },
                error: function (jqXHR) {
                    $("#result").modal();
					$("#msg").html(data.msg+"     出现了一些错误。");
                }
            })
        })
    })
</script>

<script src=" /assets/public/js/jquery.qrcode.min.js "></script>
<script>
	var ga_qrcode = '{$user->getGAurl()}';
	jQuery('#ga-qr').qrcode({
		"text": ga_qrcode
	});

	{if $config['enable_telegram'] == 'true'}
	var telegram_qrcode = 'mod://bind/{$bind_token}';
	jQuery('#telegram-qr').qrcode({
		"text": telegram_qrcode
	});
	{/if}
</script>


<script>
    $(document).ready(function () {
        $("#wechat-update").click(function () {
            $.ajax({
                type: "POST",
                url: "wechat",
                dataType: "json",
                data: {
                    wechat: $("#wechat").val(),
					imtype: $("#imtype").val()
                },
                success: function (data) {
                    if (data.ret) {
                        $("#result").modal();
						$("#ajax-im").html($("#imtype").find("option:selected").text()+" "+$("#wechat").val());
						$("#msg").html(data.msg);
                    } else {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    }
                },
                error: function (jqXHR) {
                    $("#result").modal();
					$("#msg").html(data.msg+"     出现了一些错误。");
                }
            })
        })
    })
</script>

<script>
    $(document).ready(function () {
        $("#ssr-update").click(function () {
            $.ajax({
                type: "POST",
                url: "ssr",
                dataType: "json",
                data: {
                    protocol: $("#protocol").val(),
					obfs: $("#obfs").val(),
					obfs_param: $("#obfs-param").val()
                },
                success: function (data) {
                    if (data.ret) {
                        $("#result").modal();
						$("#ajax-user-protocol").html($("#protocol").val());
						$("#ajax-user-obfs").html($("#obfs").val());
						$("#ajax-user-obfs-param").html($("#obfs-param").val());
						$("#msg").html(data.msg);
                    } else {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    }
                },
                error: function (jqXHR) {
                    $("#result").modal();
					$("#msg").html(data.msg+"     出现了一些错误。");
                }
            })
        })
    })
</script>


<script>
    $(document).ready(function () {
        $("#relay-update").click(function () {
            $.ajax({
                type: "POST",
                url: "relay",
                dataType: "json",
                data: {
                    relay_enable: $("#relay_enable").val(),
					relay_info: $("#relay_info").val()
                },
                success: function (data) {
                    if (data.ret) {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    } else {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    }
                },
                error: function (jqXHR) {
                    $("#result").modal();
					$("#msg").html(data.msg+"     出现了一些错误。");
                }
            })
        })
    })
</script>

<script>
    $(document).ready(function () {
        $("#unblock").click(function () {
            $.ajax({
                type: "POST",
                url: "unblock",
                dataType: "json",
                data: {
                },
                success: function (data) {
                    if (data.ret) {
                        $("#result").modal();
						$("#ajax-block").html("IP: "+data.msg+" 没有被封");
						$("#msg").html("发送解封命令解封 "+data.msg+" 成功");
                    } else {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    }
                },
                error: function (jqXHR) {
                    $("#result").modal();
					$("#msg").html(data.msg+"     出现了一些错误。");
                }
            })
        })
    })
</script>


<script>
    $(document).ready(function () {
        $("#ga-test").click(function () {
            $.ajax({
                type: "POST",
                url: "gacheck",
                dataType: "json",
                data: {
                    code: $("#code").val()
                },
                success: function (data) {
                    if (data.ret) {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    } else {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    }
                },
                error: function (jqXHR) {
                    $("#result").modal();
					$("#msg").html(data.msg+"     出现了一些错误。");
                }
            })
        })
    })
</script>


<script>
    $(document).ready(function () {
        $("#ga-set").click(function () {
            $.ajax({
                type: "POST",
                url: "gaset",
                dataType: "json",
                data: {
                    enable: $("#ga-enable").val()
                },
                success: function (data) {
                    if (data.ret) {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    } else {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    }
                },
                error: function (jqXHR) {
                    $("#result").modal();
					$("#msg").html(data.msg+"     出现了一些错误。");
                }
            })
        })
    })
</script>


<script>
    $(document).ready(function () {
        $("#ss-pwd-update").click(function () {
            $.ajax({
                type: "POST",
                url: "sspwd",
                dataType: "json",
                data: {
                    sspwd: $("#sspwd").val()
                },
                success: function (data) {
                    if (data.ret) {
                        $("#result").modal();
						$("#ajax-user-passwd").html($("#sspwd").val());
						$("#msg").html("成功了");
                    } else {
                        $("#result").modal();
						$("#msg").html("失败了");
                    }
                },
                error: function (jqXHR) {
                    $("#result").modal();
					$("#msg").html(data.msg+"     出现了一些错误。");
                }
            })
        })
    })
</script>


<script>
    $(document).ready(function () {
        $("#mail-update").click(function () {
            $.ajax({
                type: "POST",
                url: "mail",
                dataType: "json",
                data: {
                    mail: $("#mail").val()
                },
                success: function (data) {
                    if (data.ret) {
                        $("#result").modal();
						$("#ajax-mail").html($("#mail").val()=="1"?"发送":"不发送");
						$("#msg").html(data.msg);
                    } else {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    }
                },
                error: function (jqXHR) {
                    $("#result").modal();
					$("#msg").html(data.msg+"     出现了一些错误。");
                }
            })
        })
    })
</script>

<script>
    $(document).ready(function () {
        $("#theme-update").click(function () {
            $.ajax({
                type: "POST",
                url: "theme",
                dataType: "json",
                data: {
                    theme: $("#theme").val()
                },
                success: function (data) {
                    if (data.ret) {
                        $("#result").modal();
						$("#msg").html(data.msg);
						window.setTimeout("location.href='/user/edit'", {$config['jump_delay']});
                    } else {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    }
                },
                error: function (jqXHR) {
                    $("#result").modal();
					$("#msg").html(data.msg+"     出现了一些错误。");
                }
            })
        })
    })
</script>



<script>
    $(document).ready(function () {
        $("#method-update").click(function () {
            $.ajax({
                type: "POST",
                url: "method",
                dataType: "json",
                data: {
                    method: $("#method").val()
                },
                success: function (data) {
                    if (data.ret) {
                        $("#result").modal();
						$("#msg").html("成功了");
                    } else {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    }
                },
                error: function (jqXHR) {
                    $("#result").modal();
					$("#msg").html(data.msg+"     出现了一些错误。");
                }
            })
        })
    })
</script>

