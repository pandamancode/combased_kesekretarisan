                <?php 
					$nomor=0;
					foreach($pengajuan as $suket):
						$nomor ++;
						$ta= substr($suket['semester'],0,4).'/'.(substr($suket['semester'],0,4)+1); 
						//0. Ditolak, 
						//1. Menunggu di proses, 
						//2. Surat Sedang diproses,
						//3. Surat Sudah Selesai, 
						//4. Surat sdh diambil, 
						//5. Proses Seslasi
						$semester= $suket['nama_semester'].' T.A. '.$ta; 
				?>
                  <tr>
                    <td style="text-align:left;"><strong><?php echo $nomor; ?></strong></td>
                    <td>   <?php  echo $semester; ?><br/>
                      <strong>Pengajuan</strong> <br>                     
                      <em>	
					  	<?php  
							$tglpengajuan  = $suket['tgl_pengajuan'];
                          	
							echo nama_hari(date('Y-m-d',strtotime($tglpengajuan))).', '.tgl_indo(date('Y-m-d',strtotime($tglpengajuan)));
						?>
                      </em> </td>
                    <td><?php 
							echo $suket['keperluan'];
							 
						
						?>
                     </td>
                    <td>
                      <?php  
					  		if($suket['status']=='0'){
								echo '<span class="label label-warning label-tag"><i class="fa fa-spinner fa-fw"></i>  Permohonan Ditolak </span> <br/> <strong>Note </strong>: <br/>
                      '.$suket['alasan_tolak'].', Klik tombol <span class="label label-info label-tag"><i class="fa fa-pencil fa-fw"></i> Edit</span> untuk memperbaikinya';
					  			$btnact='<a href="#" data-id="'.$suket['id_suket_kuliah'].'" class="btn btn-xs btn-info edit-permohonan"  data-toggle="modal"  data-dismiss="modal"><i class="fa fa-pencil fa-fw"></i> Edit</a>
                      
                          			<a title="Hapus/Batalkan Pengajuan Surat Keterangan Kuliah'.$semester.'" href="#" class="btn btn-danger btn-xs konfirmasiHapus-PeriodeCuti" data-id="'.$suket['id_suket_kuliah'].'" data-toggle="modal" data-target="#konfirmasiHapus"><i class="fa fa-trash fa-fw"></i> Hapus</a>';
								
							}elseif($suket['status']=='1'){
								 echo '<span class="label label-info label-tag"><i class="fa fa-thumb-tack fa-fw"></i> Menunggu di Proses</span>';
								 $btnact='<a title="Hapus/Batalkan Pengajuan Surat Keterangan Kuliah'.$semester.'" href="#" class="btn btn-danger btn-xs konfirmasiHapus-PeriodeCuti" data-id="'.$suket['id_suket_kuliah'].'" data-toggle="modal" data-target="#konfirmasiHapus"><i class="fa fa-remove fa-fw"></i>Batalkan Permohonan </a>';
							}elseif($suket['status']=='2'){
								echo '<span class="label label-primary label-tag">  <i class="fa fa-repeat fa-fw"></i>   Sedang di Proses</span><br/> Ket : <br/> Proses Pembuatan Surat 2 hari Kerja';
								$btnact='';
							}elseif($suket['status']=='3'){
								 echo '<span class="label label-info label-tag" title="Surat Wajib di ambil di BAAKU"><i class="fa fa-check-square-o fa-fw"></i> Surat Sudah Selesai di Cetak</span>  <br/> <strong>Note </strong>: <br/>
                      <span style="color:red;">Surat Wajib diambil di BAAKU</span>';
								 $btnact='<a href="#" title="Klik Untuk Download Surat Keterangan Kuliah" class="btn btn-xs btn-info"><i class="fa fa-paperclip fa-fw"></i> Download Suket Kuliah</a>';
							}elseif($suket['status']=='4'){
								echo '<span class="label label-success label-tag"><i class="fa fa-check-square-o fa-fw"></i> Surat Sudah diambil</span> <br/> Oleh : '.$suket['ambil'].' <br/>'.nama_hari(date('Y-m-d',strtotime($suket['tgl_ambil']))).', '.tgl_indo(date('Y-m-d',strtotime($suket['tgl_ambil'])));
								
								$btnact='<a href="#" title="Klik Untuk Download Surat Keterangan Kuliah" class="btn btn-xs btn-success"><i class="fa fa-paperclip fa-fw"></i> Download Suket Kuliah</a>';
								
							}
					  
					  ?>
                     
                    
                    </td>
                    <td><?php  echo $btnact;  
							if($suket['status']>='3')
							     echo '<br/> Selesai Pada :<br/>'.nama_hari(date('Y-m-d',strtotime($suket['tgl_selesai']))).', '.tgl_indo(date('Y-m-d',strtotime($suket['tgl_selesai'])));?></td>
                  </tr>
                  
                  
             <?php 
				  endforeach; 
			 ?>