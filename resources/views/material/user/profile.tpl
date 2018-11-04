


{include file='user/main.tpl'}







	<main class="content">
		<div class="content-header ui-content-header">
			<div class="container">
				<h1 class="content-heading">我的账户</h1>
			</div>
		</div>
		<div class="container">
			<section class="content-inner margin-top-no">
				<div class="row">
					<div class="col-lg-12 col-md-12">
						

					

						<div class="card margin-bottom-no">
							<div class="card-main">
								<div class="card-inner">
									<div class="card-inner">
										<br><p class="card-heading card-heading-news"><i class="icon icon-md">fiber_new</i> 返利记录</p>
										<div class="card-table">
											<div class="table-responsive">
											{$paybacks->render()}
												<table class="table">
													<thead>
													<tr>
														<th>###</th>
														<th>返利用户</th>
														<th>返利金额</th>
													</tr>
													</thead>
													<tbody>
													{foreach $paybacks as $payback}
														<tr>
															<td><b>{$payback->id}</b></td>
															{if $payback->user()!=null}
																<td>{$payback->user()->user_name}
																</td>
																{else}
																<td>已注销
																</td>
															{/if}
															</td>
															<td>{$payback->ref_get} 元</td>
														</tr>
													{/foreach}
													</tbody>
												</table>
											{$paybacks->render()}
											</div>
										</div>
									</div>

								</div>
							</div>
						</div>
					</div>

				</div>
			</section>
		</div>
	</main>










{include file='user/footer.tpl'}
