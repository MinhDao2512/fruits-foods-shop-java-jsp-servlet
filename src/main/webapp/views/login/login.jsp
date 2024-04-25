<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<section class="ftco-section">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-6 text-center mb-5">
				<h2 class="heading-section">Login Account</h2>
			</div>
		</div>
		<c:if test="${not empty alert}">
			<div class="alert alert-${alert}">
			  <strong>${message}</strong>
			</div>
		</c:if>
		<div class="row justify-content-center">
			<div class="col-md-6 col-lg-4">
				<div class="login-wrap p-0">
					<h6 class="mb-4 text-center">
						Have an account? <a href="<c:url value='/dang-ky?action=register'/>"> Register</a>
					</h6>
					<form action="<c:url value = '/dang-nhap?action=login'/>" class="signin-form" method="POST">
						<div class="form-group">
							<input type="text" id="userName" name="userName" class="form-control" placeholder="Username" required>
						</div>
						<div class="form-group">
							<input id="passWord" name="passWord" type="password" class="form-control"
								placeholder="Password" required> <span
								toggle="#password-field"
								class="fa fa-fw fa-eye field-icon toggle-password"></span>
						</div>
						<div class="form-group">
							<button type="submit"
								class="form-control btn btn-primary submit px-3">Sign
								In</button>
						</div>
						<div class="form-group d-md-flex">
							<div class="w-50">
								<label class="checkbox-wrap checkbox-primary">Remember
									Me <input type="checkbox" checked> <span
									class="checkmark"></span>
								</label>
							</div>
							<div class="w-50 text-md-right">
								<a href="#" style="color: #fff">Forgot Password</a>
							</div>
						</div>
					</form>
					<p class="w-100 text-center">&mdash; Or Sign In With &mdash;</p>
					<div class="social d-flex text-center">
						<a href="#" class="px-2 py-2 mr-md-1 rounded"><span
							class="ion-logo-facebook mr-2"></span> Facebook</a> <a href="#"
							class="px-2 py-2 ml-md-1 rounded"><span
							class="ion-logo-twitter mr-2"></span> Twitter</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
