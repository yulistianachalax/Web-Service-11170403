<?php
include("Api.php");
$peserta= new Api();
$data = json_decode(file_get_contents('php://input'), true);
try{
	//simpan ke order tabel detail
	$sql = "UPDATE detailevent SET
			eventID = '".$data["eventID"]."',
			pesertaID = '".$data["pesertaID"]."'
			WHERE detailID= '".$data["detailID"]."' ";
	$peserta->conn->query($sql);
	echo "successfully. query : ".$sql;
}catch (PDOExeption $e){
	echo "failed saving to database : ".$e->getMessage();
}
?>