<div class="row">
	<div class="col-md-12">
        <div class="box box-success box-solid">
            <div class="box-header with-border">
        		<i class="fa fa-bookmark fa-fw"></i>
            <h3 class="box-title">Daftar Combased Kesekretarisan</h3>
              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
              </div>
            </div>
            <div class="box-body">

	            <div class="panel panel-danger panel-dark">
	              <div class="panel-heading"> <i class="fa fa-bullhorn fa-fw"></i> &nbsp; <strong>Informasi Combased Kesekretarisan</strong></div>
	              <div class="panel-body">
		              <ol>
			              <li>Bagi <strong>MAHASISWA</strong> yang perusahaan nya hilang silahkan hubungi 085266912151.</li>
			              <li>Membuat Pengajuan PKL</li>
			              <li>Menunggu Validasi Staf, setelah validasi diterima Mahasiswa dapat mengajukan perusahaan</li>
			              <li>Setelah pengajuan perusahaan, Mahasiswa menunggu validasi penanggung jawab PKL, jika validasi di terima maka surat pengantar akan dibuat</li>
			              <li>Setelah surat pengantar selesai dibuat, maka status pembuatan akan berubah</li>
		              </ol>
	              </div>
	            </div>
        
		        <div class="col-sm-12 ">
		          	<div class="panel panel-primary" >
			            <div class="panel-heading" >
			            	<i class="fa fa-calendar fa-fw"></i><strong> &nbsp; Data Mata Uji Dibuka</strong>
			            </div>

			            <div class="table-responsive" style="padding:5px">
				            <table class="table table-striped">
				                <thead>
					                <tr>
					                    <th width="5%">No.</th>
					                    <th>Mata Uji</th>
					                    <th>Biaya</th>
					                    <th>Kelompok</th>
					                    <th>Kuota</th>
					                    <th>Tanggal Ujian</th>
					                    <th>Pukul</th>
					                    <th>Sudah Bayar</th>
					                    <th>Aksi</th>
					                </tr>
				                </thead>
				                <tbody>
				                	<?php if($jadwal->num_rows()>0){ $no=0; foreach($jadwal->result() as $j){ 
				                		$no++;

				                		$total = $this->db->get_where("tb_peserta_ujian",array('id_ujian'=>$j->id_ujian));
				                		$sudahbayar = $this->db->get_where("tb_peserta_ujian",array('validate'=>'true','id_ujian'=>$j->id_ujian));

				                	?>
				                	<tr>
				                		<td><?=$no?></td>
				                		<td><?=$j->nama_matauji?></td>
				                		<td>Rp. <?=format_rp($j->harga)?></td>
				                		<td><?=$j->kelompok?></td>
				                		<td><?=$j->kuota?></td>
				                		<td><?=tgl_indo($j->tgl_ujian)?></td>
				                		<td><?=date('H:i',strtotime($j->pukul))?></td>
				                		<td><?=$sudahbayar->num_rows().' dari '.$total->num_rows()?> Pendaftar</td>
				                		<td>
				                			<form method="POST" action="<?php echo base_url(); ?>Mahasiswa/Pendaftaran/ambiluji">
						                    	<button type="submit" class="btn btn-primary btn-sm btn-flat"><i class="fa fa-check-square-o"></i> Ambil Sekarang</button>
						                    	<input type="hidden" name="id_ujian" value="<?php echo $this->encryption->encrypt($j->id_ujian) ?>">
						                    	<input type="hidden" name="id_matauji" value="<?php echo $this->encryption->encrypt($j->id_matauji) ?>">
						                    	<input type="hidden" name="jumlah" value="<?php echo $this->encryption->encrypt($sudahbayar->num_rows()) ?>">
						                    	<input type="hidden" name="kuota" value="<?php echo  $this->encryption->encrypt($j->kuota) ?>">
						                    </form>
				                		</td>
				                	</tr>
				                <?php } }else echo "<tr><td colspan='8'>Tidak Ada Data</td></tr>"; ?>
				                </tbody>
				            </table>
			        	</div>
			        </div>
			    </div>

			    <div class="col-sm-12 ">
		          	<div class="panel panel-primary" >
			            <div class="panel-heading" >
			            	<i class="fa fa-check-square-o fa-fw"></i><strong> &nbsp; Mata Uji Diambil</strong>
			            </div>

			            <div class="table-responsive" style="padding:5px">
				            <table class="table table-striped">
				                <thead>
				                 	<tr>
					                    <th width="5%">No.</th>
					                    <th>Mata Uji</th>
					                    <th>Biaya</th>
					                    <th>Kelompok</th>
					                    <th>Batas Pembayaran</th>
					                    <th>Aksi</th>
				                  	</tr>
				                </thead>
				                <tbody>
				                	<?php if($ambil->num_rows()>0){ $no=0; foreach($ambil->result() as $r){ $no++; ?>
				                	<tr>
				                		<td><?=$no?></td>
				                		<td><?=$r->nama_matauji?></td>
				                		<td>Rp. <?=format_rp($r->harga)?></td>
				                		<td><?=$r->kelompok?></td>
				                		<td>Sampai Pukul <strong><?=date('H:i',strtotime($r->timer))?></strong> WIB</td>
				                		<td><a href="<?=base_url()?>Mahasiswa/Pendaftaran/batalkan/<?=md5($r->id_peserta)?>" class="btn btn-danger btn-sm btn-flat"><i class="fa fa-close"></i> Batalkan</a></td>
				                	</tr>	
				                	<?php } }else echo "<tr><td colspan='6'>Tidak Ada Data</td></tr>"; ?>
				                </tbody>
				            </table>
			        	</div>
			        </div>
			    </div>

			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
	$('#pendaftaran').addClass('active');

	<?php if ($this->session->flashdata('msg')=='nilai'){ ?>
	swal({
        title: "Failed",
        text: "Anda Sudah Lulus!",
        timer: 1500,
        showConfirmButton: false,
        type: "error"
    });
	<?php }else if($this->session->flashdata('msg')=='sukses'){ ?>
	swal({
        title: "Done",
        text: "Berhasil Mengambil Matauji!",
        timer: 1500,
        showConfirmButton: false,
        type: "success"
    });
	<?php }else if($this->session->flashdata('msg')=='kuota'){ ?>
	swal({
        title: "Failed",
        text: "Kuota Sudah Penuh!",
        timer: 1500,
        showConfirmButton: false,
        type: "error"
    });
	<?php }else if($this->session->flashdata('msg')=='sudah'){ ?>
	swal({
        title: "Failed",
        text: "Data Sudah Ada!",
        timer: 1500,
        showConfirmButton: false,
        type: "error"
    });
	<?php }else if($this->session->flashdata('msg')=='delete'){ ?>
	swal({
        title: "Done",
        text: "Data Berhasil dibatalkan",
        timer: 1500,
        showConfirmButton: false,
        type: "success"
    });
	<?php } ?>
</script>