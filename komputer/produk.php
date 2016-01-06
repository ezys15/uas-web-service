<?php
namespace Blog;
class Penulis {
	function tambahPenulis($nama, $email, $alamat){
		$db = new Db();
		
		$stmt = $db->prepare("INSERT INTO penulis (nama, email, alamat) VALUES (?, ?, ?)");
		$stmt->bindParam(1, $nama);
		$stmt->bindParam(2, $email);
		$stmt->bindParam(3, $alamat);
		$stmt->execute();
		
		echo "Sukses";
	}
}
?>