<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<jsp:include page="head.jsp"></jsp:include>

<body>
	<!-- Pre-loader start -->
	<jsp:include page="theme-Loader.jsp"></jsp:include>
	<!-- Pre-loader end -->
	<div id="pcoded" class="pcoded">
		<div class="pcoded-overlay-box"></div>
		<div class="pcoded-container navbar-wrapper">
			<jsp:include page="navbar.jsp"></jsp:include>
			<div class="pcoded-main-container">
				<div class="pcoded-wrapper">
					<jsp:include page="navbarmainmenu.jsp"></jsp:include>
					<div class="pcoded-content">
						<!-- Page-header start -->
						<jsp:include page="page-header.jsp"></jsp:include>
						<!-- Page-header end -->
						<div class="pcoded-inner-content">
							<!-- Main-body start -->
							<div class="main-body">
								<div class="page-wrapper">
									<!-- Page-body start -->
									<div class="page-body">
										<div class="row">
											<div class="col-sm-12">
												<!-- Basic Form Inputs card start -->
												<div class="card">
													<div class="card-header">
														<h5>Cadastro de Usuários</h5>
													</div>
													<div class="card-block">
														<form class="form-material">
															
																<div
																	class="form-group form-default form-static-label col-sm-2">
																	<input type="text" name="id" id= "id" class="form-control"
																		required="required" readonly="readonly"> <span class="form-bar"></span>
																	<label class="float-label">Id</label>
																</div>
																<div
																	class="form-group form-default form-static-label col-sm-9">
																	<input type="text" name="nome" id = "nome" class="form-control"
																		required="required"> <span class="form-bar"></span>
																	<label class="float-label">Nome</label>
																</div>
																<div
																	class="form-group form-default form-static-label col-sm-9">
																	<input type="text" name="login" id = "login" class="form-control"
																		required="required" autocomplete="off"> <span class="form-bar"></span>
																	<label class="float-label">login</label>
																</div>
																<div
																	class="form-group form-default form-static-label col-sm-9">
																	<input type="password" name="senha" id= "senha" class="form-control"
																		required="required" autocomplete="off"> <span class="form-bar"></span>
																	<label class="float-label">Senha</label>
																</div>
																<div
																	class="form-group form-default form-static-label col-sm-9">
																	<input type="email" name="email" id="email"
																		class="form-control" placeholder="seunome@gmail.com"
																		required=""> <span class="form-bar"></span> <label
																		class="float-label">Email</label>
																</div>
														
															<button
																class="btn btn-primary btn-round waves-effect waves-light">Primary
																Button</button>
															<button
																class="btn btn-success btn-round waves-effect waves-light">Success
																Button</button>
															<button
																class="btn btn-info btn-round waves-effect waves-light">Info
																Button</button>
															<button
																class="btn btn-warning btn-round waves-effect waves-light">Warning
																Button</button>
															<button
																class="btn btn-danger btn-round waves-effect waves-light">Danger
																Button</button>
															<button
																class="btn btn-inverse btn-round waves-effect waves-light">Inverse
																Button</button>
															<button
																class="btn btn-disabled btn-round disabled waves-effect waves-light">Disabled
																Button</button>
														</form>

													</div>
												</div>
											</div>
										</div>

									</div>
									<!-- Page-body end -->
								</div>
								<div id="styleSelector"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- Required Jquery -->
	<jsp:include page="javascriptfile.jsp"></jsp:include>
</body>

</html>
