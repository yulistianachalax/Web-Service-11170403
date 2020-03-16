<?php
include("Api.php");
$peserta = new Api();
$data = json_decode(file_get_contents('php://input'), true);
try {
	//simpan ke tabel order detail
	$sql = "DELETE FROM detailevent WHERE
			detailID = '".$data["detailID"]."'
			AND pesertaID='".$data["pesertaID"]."' ";
	$peserta->conn->query($sql);
	echo "Successfully. Query : ".$sql;
}catch(PDOException $e){
	echo "Failed saving to database : ".$e->getMessage();
}
?>