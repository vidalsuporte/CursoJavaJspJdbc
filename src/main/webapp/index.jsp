<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang= "en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Curso Java Server Page</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
	
	
	<style type="text/css">
	form{
	position: absolute;
	left: 33%;
	right: 33%;
	top: 40%;
	}
	
	h1 {
	position: absolute;
	left: 33%;
	
	top: 20%;
}
	h3 {
	position: absolute;
	left: 33%%;
	right: 33%;
	top: 30%;
}
	h5 {
	position: absolute;
	left: 33%%;
	right: 33%;
	top: 60%;
}
	</style>
	
	
	
	
</head>
<body>
	<h1>Projeto Java JSP</h1>

	<%
	out.print("<h3> Login do Projeto</h3>");
	%>


	<form  action="ServletLogin" method="post" class="row g-3 needs-validation" novalidate>
		<input type="hidden" value=<%=request.getParameter("url")%> name="url">
		<div class="col-md-6">
		<label>Login</label>
			<input name= "login" type="text" class="form-control" id="formGroupExampleInput2"  required="required">
			<div class="invalid-feedback">
      Insira o Login!
    </div>
		</div>
		<div class="col-md-6">
		<label>Senha</label>
			<input name= "password" type="password" class="form-control" id="formGroupExampleInput2"  required="required">
		<div class="invalid-feedback">
      Insira a Senha!
    </div>
		</div>
		

		<div class="col-12">
			<button type="submit" class="btn btn-primary">Login</button>
		</div>
	</form>
	
 	<h5>${msg}</h5>
	
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
		crossorigin="anonymous">
	</script>
	<script type="text/javascript"	>// Example starter JavaScript for disabling form submissions if there are invalid fields
	(function() {
	  'use strict'

	  // Fetch all the forms we want to apply custom Bootstrap validation styles to
	  const forms = document.querySelectorAll('.needs-validation')

	  // Loop over them and prevent submission
	  Array.from(forms).forEach(form => {
	    form.addEventListener('submit', event => {
	      if (!form.checkValidity()) {
	        event.preventDefault()
	        event.stopPropagation()
	      }

	      form.classList.add('was-validated')
	    }, false)
	  })
	})()
	
	</script>

	
</body>
</html>