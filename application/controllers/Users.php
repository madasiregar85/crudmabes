<?php
Class Users extends CI_Controller{
	
	function index(){

		//die("ini ada di controller Users->index");

		$data = array();

		$this->load->model("model_users");
		$data['list_users'] = $this->model_users->get_users();


		// var_dump($data['list_users']);

		$this->load->view("users/index",$data);

	}


	function add(){
		$this->load->model("model_users");
		
		$data = array();

		if(isset($_POST['tombol_submit'])){
			//proses simpan dilakukan
			$this->model_users->simpan($_POST);
			redirect("users");
		}

		
		$this->load->view("users/add",$data);
	}

}