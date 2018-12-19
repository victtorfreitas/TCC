<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
</div>
<!-- /.container-fluid -->

<!-- Sticky Footer -->
<footer class="sticky-footer">
	<div class="container my-auto">
		<div class="copyright text-center my-auto">
			<span>Copyright © Victtor Freitas 2018</span>
		</div>
	</div>
</footer>

</div>
<!-- /.content-wrapper -->

</div>
<!-- /#wrapper -->

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top"> <i
	class="fas fa-angle-up"></i>
</a>

<!-- Logout Modal-->
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">Realmente quer
					sair?</h5>
				<button class="close" type="button" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">×</span>
				</button>
			</div>
			<div class="modal-body">Selecione "Sair" caso esteja pronto
				para finalizar sua sessão.</div>
			<div class="modal-footer">
				<button class="btn btn-secondary" type="button" data-dismiss="modal">Cancelar</button>
				<a class="btn btn-primary"
					href="${linkTo[LoginController].deslogar()}">Sair</a>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="newUserModel" tabindex="-1" role="dialog"
	aria-labelledby="headerNewUser" aria-hidden="true"
	data-backdrop="static">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="headerNewUser">Cadastrar novo
					usuario</h5>
				<button class="close" type="button" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">×</span>
				</button>
			</div>
			<div class="modal-body">
				<c:import url="../default/formularioUsuario.jsp"></c:import>
			</div>
		</div>
	</div>
</div>
<div class="modal fade" id="removerUserModel" tabindex="-1"
	role="dialog" aria-labelledby="headerRemoverUser" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="headerRemoverUser">Deseja realmente
					excluir este usuario?</h5>
				<button class="close" type="button" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">×</span>
				</button>
			</div>
			<div class="modal-body">
				Selecione "Remover" para efetuar a exclusão do usuário do ID: <i
					id="indexValorRemoved" value=""></i>
			</div>
			<c:set value="valorIndex()" var="aSerRemovido" scope="request"></c:set>
			<div class="modal-footer">
				<button class="btn btn-secondary" type="button" data-dismiss="modal">Cancelar</button>
				<form action="${linkTo[UsuarioController].remove(null)}" method="get">
				<input type="text" hidden="true" id="index" name="index">
				<button type="submit" class="btn btn-danger">Remover</button>
				</form>
			</div>
		</div>
	</div>
</div>

<!-- Bootstrap core JavaScript-->
<script src="<c:url value='/styles/jquery/jquery.min.js'/>"></script>

<script
	src="<c:url value='/styles/bootstrap/js/bootstrap.bundle.min.js'/>"></script>

<!-- Core plugin JavaScript-->
<script
	src="<c:url value='/styles/jquery-easing/jquery.easing.min.js'/>"></script>

<!-- Page level plugin JavaScript-->
<script src="<c:url value='/styles/chart.js/Chart.min.js'/>"></script>

<!-- DataTables JavaScript -->

<script src="<c:url value='/styles/datatables/jquery.dataTables.js'/>"></script>

<script
	src="<c:url value='/styles/datatables/dataTables.bootstrap4.js'/>"></script>


<!-- Custom scripts for all pages-->
<script src="<c:url value='/styles/js/sb-admin.min.js'/>"></script>

<!-- Demo scripts for this page-->
<script src="<c:url value='/styles/js/demo/datatables-demo.js'/>"></script>

<script src="<c:url value='/styles/js/demo/chart-area-demo.js'/>"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootbox.js/4.4.0/bootbox.min.js"></script>


<script type="text/javascript">
	var indexValorRemoved;
	
	$(document)
			.ready(
					function() {
						$('#tabelaUsuario')
								.dataTable(
										{
											"language" : {
												"url" : "//cdn.datatables.net/plug-ins/1.10.19/i18n/Portuguese-Brasil.json"
											}
										});
					});
	function removerUsuario(valor) {
		/* var tbUsuarios = document.querySelectorAll("#trUsuarios");
		var indexValue;
		for (var i = 0; i < tbUsuarios.length; i++) {
			indexValue = tbUsuarios[i].querySelector("#index").textContent;
		} */
		alert(valor);
		var valorRemover = document.querySelector("#indexValorRemoved");
		valorRemover.textContent = valor;
		var boraLa = document.querySelector("#index");
		boraLa.textContent = valor;		
		indexValorRemoved = valor;
	}
	
	function valorIndex(){
		console.log("Entrei K7");
		return indexValorRemoved;
	}
	

	
	function confirma(id){
			console.log(id);
			bootbox.confirm({
				  message:'Confirma a exclusão do registro?'+id,
				  callback: function(confirmacao){
	
				    if (confirmacao){
				      bootbox.alert('Registro excluído com sucesso.');
				      var path = "${linkTo[UsuarioController].remove()}";
				      window.location.href = path+id;
				      console.log(primeiraParte+id);
				    }
				    else
				    	window.location.reload();
				  
				  },
				  buttons: {
				    cancel: {label: 'Cancelar',className:'btn-default'},
				    confirm: {label: 'EXCLUIR',className:'btn-danger'}
				    
				  }
				});
		}
	
</script>
</body>

</html>