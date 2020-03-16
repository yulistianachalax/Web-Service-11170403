<?php
 include ("Api.php");
 $peserta  = new Api();
 $data = [
     'detailID'  => $_GET["detailID"],
	 'eventID' => $_GET["eventID"],
	 'pesertaID' => $_GET["pesertaID"]
 ];
  echo $peserta->post("http://localhost/tugas/submit.php",$data);
 ?>
 