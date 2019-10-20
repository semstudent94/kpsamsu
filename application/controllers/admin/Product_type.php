<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Product_type extends CI_Controller {
	function __construct() {
		parent::__construct();
        $this->load->model('Model_barang');
        $this->load->model('Model_kategori');
        $this->load->model('Model_penjualan_admin');
        isLoginSessionExpired();
	}

    function index()
    {     
        if (ceksession())
        {
            $data['record']     =    $this->Model_barang->M_tampil_data_type();
            $data['transaksi']  =    $this->Model_penjualan_admin->cekpenjualan();
            $this->template->load('template','admin/product_type/view_product_type',$data);
        }
    }
    
    function viewAddProductType()
    {
        if (ceksession())
        {
            $data['transaksi']  =    $this->Model_penjualan_admin->cekpenjualan();
            $this->template->load('template','admin/product_type/input_product_type',$data);
        }
    }

    function viewEditProductType($id)
    {
        if (ceksession())
        {
            $data['record'] = $this->Model_barang->M_tampil_data_type_byId($id);
            $data['transaksi']  =    $this->Model_penjualan_admin->cekpenjualan();
            $this->template->load('template','admin/product_type/edit_product_type',$data);
        }
    }

    function addType()
    {
        if (ceksession())
        {
            $typename    = $this->input->post('typename');
            $description = $this->input->post('description');
            $sizetype    = $this->input->post('type');
            $dataType    = array('Type_name'=>$typename,'Description'=>$description,'Size_type'=>$sizetype);
            $insert      = $this->Model_barang->M_addType($dataType);
            if($insert)
            {
                $this->session->set_flashdata('Status','Input Succes');
                redirect('admin/Product_type');
            }
            else
            {
                $this->session->set_flashdata('Status','Input Failed');
                redirect('admin/Product_type');
            }
     
       }
    }

    
    function editType()
    {
        if (ceksession())
        {
            $typename= $this->input->post('typename');
            $sizetype= $this->input->post('sizetype');
            $description= $this->input->post('description');
            $update_at= get_current_date();
            $id= $this->input->post('id');
            $dataEdit= array(
                             'Type_name'   => $typename,
                             'Size_type'   => $sizetype,
                             'Description' => $description,
                             'Update_at'   => $update_at);
            $edit=$this->Model_barang->M_editType($dataEdit,$id);
            if($edit)
            {
                $this->session->set_flashdata('Status','Edit Succes');
                redirect('admin/Product_type');
            }
            else
            {
                $this->session->set_flashdata('Status','Edit Failed');
                redirect('admin/Product_type');
            }
            
        }
    }

    function deleteTypeProduct($id)
    {
        if (ceksession())
        {
            $delete = $this->Model_barang->M_deleteType($id);
            if($delete)
            {
                $this->session->set_flashdata('Status','Delete Succes');
                redirect('admin/Product_type');
            }
            else
            {
                $this->session->set_flashdata('Status','Delete Failed');
                redirect('admin/Product_type');
            }
        }
    }
}
