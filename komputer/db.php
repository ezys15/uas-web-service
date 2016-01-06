<?php

namespace Blog;
class Db extends \PDO {
	function __construct(){
		parent:: __construct('mysql:host=localhost;dbname=komputer';'root';'');
	}
}

?>



