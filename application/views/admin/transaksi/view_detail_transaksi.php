<div class="container-fluid">
            <div class="block-header">
               
            </div>
            <!-- Basic Examples -->
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>
                                Detail Transaksi Penjualan
                            </h2>
                        </div>
                        <div class="body">
                            <div class="table-responsive">
                                <table class="table table-bordered table-striped table-hover js-basic-example dataTable">
                                    <thead>
                                        <tr>
                                            <th>Id Transaksi</th>
                                            <th>Nama Barang</th>
                                            <th>Jumlah</th>
                                            <th>Harga</th>
                                            <!-- <th style="text-align:center">Aksi</th> -->
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>Id Transaksi</th>
                                            <th>Nama Barang</th>
                                            <th>Jumlah</th>
                                            <th>Harga</th>
                                            <!-- <th style="text-align:center">Aksi</th> -->
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                    <?php $totalbeli = 0;
                                    foreach ($record as $r) { ?>
                                        <tr class="gradeU">
                                          <td><?php echo $r->Transaction_bill?></td>
                                          <td><?php echo $r->Product_name?></td>
                                          <td><?php echo $r->Qty ?></td>
                                          <td>Rp <?php echo $r->Price ?></td>
                                          <!-- <td align="center">
                                              <a href='<?php echo base_url('admin/Product_type/viewEditProductType/'.$r->Id)?>'><i class="material-icons text-warning">edit</i></a>
                                              <a href='<?php echo base_url('admin/Product_type/deleteTypeProduct/'.$r->Id)?>'><i class="material-icons text-primary">delete</i></a>
                                          </td> -->
                                        </tr>
                                    <?php $totalbeli=$totalbeli+($r->Qty * $r->Price);} ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- #END# Basic Examples -->
        </div>

        <script>
<?php if (!empty($this->session->flashdata('Status'))){?>
    setnotifstatus('<?php echo $this->session->flashdata('Status')?>');
<?php }?>


 function setnotifstatus(err)
{ 

    if (err == 'Edit Succes' || err == 'Delete Succes' || err == 'Acc Succes' )
    {
        ttp='success';
    }
    else if(err == 'Edit Failed' || err == 'Delete Failed' || err == 'Acc Failed' )
    {
        ttp='danger';
    }

  $.notify({
	// options
	message: err,
  },{
    // settings
    element: 'body',
    position: null,
    type: ttp,
    allow_dismiss: true,
    newest_on_top: false,
    showProgressbar: false,
    placement: {
      from: "bottom",
      align: "right"
    },
    offset: 20,
    spacing: 10,
    z_index: 1031,
    delay: 5000,
    timer: 1000,
    url_target: '_blank',
    mouse_over: null,
    animate: {
      enter: 'animated fadeInRight',
      exit: 'animated fadeOutRight'
    },
    onShow: null,
    onShown: null,
    onClose: null,
    onClosed: null,
    icon_type: 'class',
    template: '<div data-notify="container" class="col-xs-11 col-sm-3 alert alert-{0}" role="alert">' +
      '<button type="button" aria-hidden="true" class="close" data-notify="dismiss">×</button>' +
      '<span data-notify="icon"></span> ' +
      '<span data-notify="title">{1}</span> ' +
      '<span data-notify="message">{2}</span>' +
      '<div class="progress" data-notify="progressbar">' +
        '<div class="progress-bar progress-bar-{0}" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%;"></div>' +
      '</div>' +
      '<a href="{3}" target="{4}" data-notify="url"></a>' +
    '</div>' 
  });

}
</script>