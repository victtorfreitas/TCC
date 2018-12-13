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

<!-- Bootstrap core JavaScript-->
<script src="<c:url value='/styles/jquery/jquery.min.js'/>"></script>

<script
	src="<c:url value='/styles/bootstrap/js/bootstrap.bundle.min.js'/>"></script>

<!-- Core plugin JavaScript-->
<script
	src="<c:url value='/styles/jquery-easing/jquery.easing.min.js'/>"></script>

<!-- Page level plugin JavaScript-->
<script src="<c:url value='/styles/chart.js/Chart.min.js'/>"></script>

<script src="<c:url value='/styles/datatables/jquery.dataTables.js'/>"></script>

<script
	src="<c:url value='/styles/datatables/dataTables.bootstrap4.js'/>"></script>

<!-- Custom scripts for all pages-->
<script src="<c:url value='/styles/js/sb-admin.min.js'/>"></script>

<!-- Demo scripts for this page-->
<script src="<c:url value='/styles/js/demo/datatables-demo.js'/>"></script>

<script src="<c:url value='/styles/js/demo/chart-area-demo.js'/>"></script>
<script type="text/javascript">
$(document).ready(function() {
    $('#tabelaUsuario').dataTable( {
        "language": {
            "url": "//cdn.datatables.net/plug-ins/1.10.19/i18n/Portuguese-Brasil.json"
        }
    } );
} );
</script>
</body>

</html>