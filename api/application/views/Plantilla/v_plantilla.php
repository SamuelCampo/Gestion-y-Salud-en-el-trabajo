<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>LANDING</title>
	<link rel="stylesheet" href="<?php echo base_url('asset/css/bootstrap.min.css') ?> ">
	<link rel="stylesheet" href="<?php echo base_url('asset/css/bootstrap-reboot.min.css') ?>">

</head>
<body>
		<nav class="navbar navbar-light bg-light" style=" background:#e75a85 !important">
			<a class="navbar-brand" href="#"><img src="<?php echo base_url('asset/img/icono.JPG') ?>" alt=""></a>
		  <ul class="nav justify-content-end" style="">
			  <li class="nav-item" style="border-right: 2px solid #f3a94a!important">
			    <a class="nav-link active" style="color: white" href="#">PRODUCTOS</a>
			  </li>
			  <li class="nav-item" style="border-right: 2px solid #f3a94a!important">
			    <a class="nav-link" style="color: white" href="#">TIPS</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" style="color: white" href="#">CONSULTORIO</a>
			  </li>
			</ul>
		</nav>
		<?php echo $contenido ?>

<footer>
	<div class=" text-center py-3" style="background-color: #8C8887">© 2018 Copyright:
    <a href="#" style="color: white"> DESARROLLADO POR</a>
  </div>
  	<script src="<?php echo base_url('asset/js/jquery-3.3.1.min.js') ?>"></script>
	<script src="<?php echo base_url('asset/EasyAutocomplete/jquery.easy-autocomplete.min.js') ?>"></script>
 	<script src="<?php echo base_url('asset/js/bootstrap.min.css') ?>"></script>
	<script src="<?php echo base_url('asset/js/bootstrap.bundle.min.js') ?>" ></script>
	<?php echo $js ?>
</footer>
	</body>
</html>