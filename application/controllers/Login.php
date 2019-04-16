<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {


	function index(){

		if (isset($_POST['submit'])) {
			// echo "test";
			// var_dump("test");
			// die('test');

			
		}


		$this->load->view('admin/login');


	}
}
