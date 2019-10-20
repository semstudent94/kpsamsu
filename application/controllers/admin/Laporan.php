<?php
class Laporan extends CI_Controller{
    
    function __construct() {
        parent::__construct();
        $this->load->model('Model_penjualan_admin');
        $this->load->model('Model_pembelian');
        isLoginSessionExpired();
    }

    function laporanpenjualan()
    {  
        if (ceksession())
        {
            $data['record']=  $this->Model_penjualan_admin->getDataLaporanPenjualan();
            $config = array('format' => 'Folio');
            $mpdf   = new \Mpdf\Mpdf($config);
            $html   = $this->load->view('admin/laporan/LaporanPenjualan',$data,true);
            $mpdf->WriteHTML($html);
            $mpdf->Output();
        }
    }

    function laporanpenjualanbydate()
    {  
        if (ceksession())
        {
            $tgl1 = $this->input->post('tgl1');
            $tgl2 = $this->input->post('tgl2');
            $tglawal = get_format_date($tgl1,'Y-m-d','00:00:00');
            $tglakhir = get_format_date($tgl2,'Y-m-d','23:59:59');
            $data['record']=  $this->Model_penjualan_admin->getDataLaporanPenjualanBydate($tglawal,$tglakhir);
            $data['tgl'] = array('tgl1'=>$tgl1,'tgl2'=>$tgl2);
            $config = array('format' => 'Folio');
            $mpdf   = new \Mpdf\Mpdf($config);
            $html   = $this->load->view('admin/laporan/LaporanPenjualanDate',$data,true);
            $mpdf->WriteHTML($html);
            $mpdf->Output();
        }
    }

    function laporanpembelian()
    {  
        if (ceksession())
        {
            $data['record']=  $this->Model_pembelian->getDataPembelian();
            $config = array('format' => 'Folio');
            $mpdf   = new \Mpdf\Mpdf($config);
            $html   = $this->load->view('admin/laporan/LaporanPembelian',$data,true);
            $mpdf->WriteHTML($html);
            $mpdf->Output();
        }
    }

    function laporanbaranglaris()
    {
        if(ceksession())
        {
            $data['record']=  $this->Model_penjualan_admin->getBarang10Baranglaris();
            $config = array('format' => 'Folio');
            $mpdf   = new \Mpdf\Mpdf($config);
            $html   = $this->load->view('admin/laporan/Laporanbaranglaris',$data,true);
            $mpdf->WriteHTML($html);
            $mpdf->Output();
        }
    }
    
}