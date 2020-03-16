<?php
 include ("Api.php");
 $peserta  = new Api();
 $data = json_decode(file_get_contents('php://input'), true);
 try{
	 		 $sql1 = "INSERT INTO detailevent
	         (detailID,eventID,pesertaID)
			 VALUES ('".$data["detailID"]."',
			 '".$data["eventID"]."',
			 '".$data["pesertaID"]."')";
	 $peserta->conn->query($sql1);
	 echo "Succesfully";
  }catch (PDOException $e){
	  echo "Failed saving to database : ".$e->getMessage();
  }
  ?>
 