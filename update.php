<?php
include("Api.php");
$peserta = new Api();
$data = [
	 'detailID'  => $_GET["detailID"],
	 'eventID' => $_GET["eventID"],
	 'pesertaID' => $_GET["pesertaID"],
     //'peserta'=>['pesertaID'=> $_GET["pesertaID"]]
 ];
echo $peserta->put("http://localhost/tugas/saveupdate.php",$data);
?>