<?php
class Email extends CI_Controller{
    
    function __construct() {
        parent::__construct();
    }

    function sendMailAdmin()
    {

        $id = $this->input->post('id');
        $email = $_POST['email'];
        $config = Array(
            'protocol'  => 'smtp',
            'smtp_host' => 'ssl: //smtp.googlemail.com',
            'smtp_port' => 465,
            'smtp_user' => 'ajengshop20@gmail.com',
            'smtp_pass' => 'AjengShop123',
            'mailtype'  => 'html', 
            'charset'   => 'iso-8859-1'
        );
        $this->load->library('email', $config);
        $this->email->set_newline("\r\n");
    
        $this->email->from('ajengshop20@gmail.com', 'Admin Ajeng Shop');
        $this->email->to($email);
      
        $this->email->subject('Forget Password');
        $this->email->message('Link reset password for Admin Ajeng Shop <br><br>

        '.base_url().'operator/get_admin_byemail_fromemail?id='.$id. '. <br><br>

        Regard, <br>
        Super Admin Ajeng Shop');
        if (!$this->email->send()) {
            // Raise error message
            show_error($this->email->print_debugger());
            echo 'Failed to send email';
        } else {
            // Show success notification or other things here
            echo 'Link berhasil dikirim ke email Anda';
        }
    }

    function sendMailUser()
    {
        $id = $this->input->post('id');
        $email= $this->input->post('email');
        $config = Array(
            'protocol'  => 'smtp',
            'smtp_host' => 'ssl: //smtp.googlemail.com',
            'smtp_port' => 465,
            'smtp_user' => 'ajengshop20@gmail.com',
            'smtp_pass' => 'AjengShop123',
            'mailtype'  => 'html', 
            'charset'   => 'iso-8859-1'
        );
        $this->load->library('email', $config);
        $this->email->set_newline("\r\n");
    
        $this->email->from('ajengshop20@gmail.com', 'Admin Ajeng Shop');
        $this->email->to($email);
      
        $this->email->subject('Forget Password');
        $this->email->message("Link reset password for User Ajeng Shop. <br><br>".base_url()."operator/get_member_byemail_fromemail?id=".$id."<br><br> Regard, <br> Admin Ajeng Shop");
        if (!$this->email->send()) {
            // Raise error message
            show_error($this->email->print_debugger());
            echo 'Failed to send email';
        } else {
            // Show success notification or other things here
            echo 'Link berhasil dikirim ke email Anda';
        }
    }
}
?>
    