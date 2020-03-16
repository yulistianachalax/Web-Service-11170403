<?php
include("Api.php");
$peserta = new Api();
$data = ['detailID' => $_GET["detailID"],
		'pesertaID' => $_GET["pesertaID"] ];
echo $peserta->post("http://localhost/tugas/savecancel.php",$data);
?>