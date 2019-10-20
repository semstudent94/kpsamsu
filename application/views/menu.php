<ul class="list">
    <li class="header">MAIN NAVIGATION</li>
        <a href="javascript:void(0);" class="menu-toggle">
            <i class="material-icons">widgets</i>
            <span>MASTER DATA</span>
        </a>
        <ul class="ml-menu">
            <li>
            <a href="<?= base_url('admin/Product')?>">Product</a>
            </li>
            <li>
            <a href="<?= base_url('admin/Kategori')?>">Category</a>
            </li>
            <li>
            <a href="<?= base_url('admin/Product_type')?>">Product Type</a>
            </li>
            <li>
            <a href="<?= base_url('admin/Image_product')?>">Image Product</a>
            </li>
            <li>
            <a href="<?= base_url('admin/Supliyer')?>">Supliyer</a>
            </li>
            <?php if ($_SESSION['userdata']->Usergrup_id == 1) { ?>
            <li>
            <a href="<?= base_url('admin/Karyawan')?>">Karyawan</a>
            </li>
            <?php } ?>
            <li>
            <a href="<?= base_url('admin/Member')?>">Member</a>
            </li>
            <?php if ($_SESSION['userdata']->Usergrup_id == 1) { ?>
            <li>
            <a href="<?= base_url('admin/User')?>">User</a>
            </li>
            <?php } ?>
        </ul>
        <a href="javascript:void(0);" class="menu-toggle">
            <i class="material-icons">widgets</i>
            <span>TRANSAKSI</span>
        </a>
        <ul class="ml-menu">
             <?php if ($_SESSION['userdata']->Usergrup_id == 1) { ?> 
            <li>
            <a href="<?= base_url('admin/Pembelian')?>">Pembelian</a>
            </li>
             <?php } ?>
            <li>
            <a href="<?= base_url('admin/Penjualan')?>">Penjualan</a>
            </li>
            <li>
            <a href="<?= base_url('admin/Penjualan/vieDataStatusPenjualan')?>">Status Penjualan</a>
            </li>
        </ul>
        <a href="javascript:void(0);" class="menu-toggle">
            <i class="material-icons">widgets</i>
            <span>LAPORAN</span>
        </a>
        <ul class="ml-menu">
            <li>
            <a href="<?= base_url('admin/Laporan/laporanpembelian')?>" target="_blank">Laporan Pembelian</a>
            </li>
            <li>
            <a href="<?= base_url('admin/Laporan/laporanpenjualan')?>" target="_blank">Laporan Penjualan</a>
            </li>
            <li>
            <a data-toggle="modal" data-target="#modalinputtgl">Laporan Penjualan Bulan</a>
            </li>
            <li>
            <a href="<?= base_url('admin/Laporan/laporanbaranglaris')?>" target="_blank">Barang Laris</a>
            </li>
        </ul>
    </li>
</ul>


