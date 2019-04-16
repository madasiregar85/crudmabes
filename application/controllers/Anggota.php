<?php
Class Anggota extends CI_Controller{
	public function index(){
		$this->load->model("model_data");
		$data['list_anggota_tni'] = $this->model_data->ambil_data_anggota();



		// echo '<pre>';
		// var_dump($data['list_karyawan']);
		// echo '</pre>';

 	// 	exit();

		$this->load->view("anggota/index",$data);

		// // die('Ini adalah index dari controller data');

		// $this->load->view("data_anggota_tni");
	}

	function index2(){

		die('ini index 2');
	}


	public function add(){
		$this->load->model("model_data");
		$data['tipe'] = "Add";

		if(isset($_POST['tombol_submit'])){
			//proses simpan dilakukan
			$this->model_data->simpan($_POST);
			redirect("data");
		}

		$this->load->view("add_anggota_tni",$data);
	}

	

	public function edit($id){
		$this->load->model("model_data");
		$data['tipe'] = "Edit";
		$data['default'] = $this->model_data->get_default($id);

		if(!empty($_POST['tombol_submit'])){
			$this->model_data->update($_POST, $id);
			redirect("data");
		}

		$this->load->view("add_anggota_tni",$data);
	}


	public function delete($id){
		$this->load->model("model_data");
		$this->model_data->hapus($id);
		redirect("data");
	}



}