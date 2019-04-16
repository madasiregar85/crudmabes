<?php

defined('BASEPATH') OR exit('No direct script access allowed');

Class Model_admin extends CI_Model{


	function get_users_by_username_password($username,$password){ 

		$sql = $this->db->query("SELECT * FROM users WHERE flag = 1 
								and username = $username 
								and password = $password");
		return $sql->result_array();

	}



}