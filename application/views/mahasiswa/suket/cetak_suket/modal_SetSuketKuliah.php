<!-- MOdal Edit-->

            <div class="modal-header box-success box-solid">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel"><i class="fa fa-tag fa-fw"></i> Persetujuan Usulan Cuti Akademik </h4>
            </div>
          <form method="POST" id="form-update-SetBiayaCuti">
          	<input type="hidden" name="id" value="<?php //echo $dataSetBiayaCuti->id_cuti_setbiaya; ?>">
             <div class="modal-body" style="max-height: calc(100vh - 210px);  overflow-y: auto;"> 


<table border="0" width="100%">
	<tr>
		<td colspan="4" align="center"><strong><u>SURAT KETERANGAN KULIAH</u></strong><br>No. <input type="text"  name="namafile" style="padding:2px; width:200px;" value="001/FTIK-S1.I/B.74/VII/2017"></td>

	</tr>
	<tr>
		<td colspan="4">&nbsp;</td>
	</tr>
	<tr>
		<td colspan="4">Dengan ini menerangkan bahwa :<br></td>
	</tr>
	<tr>
		<td colspan="4">&nbsp;</td>
	</tr>
	<tr>
		<td width="32%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Nama</td>
		<td width="1%">:</td>
		<td colspan="2"><input type="text"  name="namafile" style="padding:2px;" value="Arief Setia Budi"></td>

	</tr>
	<tr>
		<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;NPM</td>
		<td>:</td>
		<td colspan="2"><input type="text"  name="namafile" style="padding:2px;" value="14312130"></td>
	</tr>
	<tr>
		<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tempat, Tanggal Lahir</td>
		<td>:</td>
		<td colspan="2"><input type="text"  name="namafile" style="padding:2px;" value="Bandar Lampung">, 11 Juli 1998</td>
	</tr>
	<tr>
		<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tingkat/Semester</td>
		<td>:</td>
		<td colspan="2">IV/VIII</td>
	</tr>
	<tr>
		<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tahun Akademik</td>
		<td>:</td>
		<td colspan="2">2017/2018</td>
	</tr>
	<tr>
		<td colspan="4">&nbsp;</td>
	</tr>
	<tr>
		<td colspan="4">tercatat sebagai mahasiswa program studi S1 Informatika Fakultas Teknik dan Ilmu Komputer Universitas Teknokrat Indonesia. Orang tua/wali mahasiswa tersebut adalah :
		</td>
	</tr>
	<tr>
		<td colspan="4">&nbsp;</td>
	</tr>
	<tr>
		<td width="32%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Nama</td>
		<td width="1%">:</td>
		<td colspan="2"><input type="text"  name="namafile2" style="padding:2px;" value="Rizik Shihab"></td>

	</tr>
	<tr>
		<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Pekerjaan</td>
		<td>:</td>
		<td colspan="2"><input type="text"  name="namafile3" style="padding:2px; width:100%; " value="Pegawai Negeri Sipil (PNS)"></td>
	</tr>
	<tr>
		<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Instansi</td>
		<td>:</td>
		<td colspan="2"><input  type="text"  name="namafile3" style="padding:2px; width:100%;" value="Dinas Pendidikan Kota Bandar Lampung"></td>
	</tr>
	<tr>
		<td colspan="4">&nbsp;</td>
	</tr>
	<tr>
		<td colspan="4">Demikian surat keterangan ini dibuat atas permintaan yang bersangkutan untuk keperluan 
		  <input  type="text"  name="namafile4" style="padding:2px; width:100%;" value="Sebagai Keterangan Masih Menjadi Tanggungan Orang Tua."></td>
	</tr>
	<tr>
		<td colspan="4">&nbsp;</td>
	</tr>
	<tr>
		<td colspan="3">&nbsp;</td>
		<td width="59%">Bandarlampung, 17 Juli 2017</td>
	</tr>
	<tr>
		<td colspan="3">&nbsp;</td>
		<td>Dekan,</td>
	</tr>
	<tr>
		<td colspan="4">&nbsp;</td>
	</tr>
	<tr>
		<td colspan="4">&nbsp;</td>
	</tr>
	<tr>
		<td colspan="4">&nbsp;</td>
	</tr>
	<tr>
		<td colspan="3">&nbsp;</td>
		<td>Yeni Agus Nurhuda, S.Si., M.Cs.</td>
	</tr>
	<tr>
		<td colspan="3">&nbsp;</td>
		<td>NIK. 021 05 02 05</td>
	</tr>
	<tr>
		<td colspan="4"><br/><strong>Status Persetujuan : 
	    </strong>		 
	      <label class="label label-success label-tag" style="padding:5px; padding-top:8px; padding-right:15px;">
	        <input type="radio" name="persetujuan" value="Setujui" id="persetujuan_0" required>
	        Setujui</label>
	      <label class="label label-danger label-tag" style="padding:5px; padding-top:8px; padding-right:15px;">
	        <input type="radio" name="persetujuan" value="Tolak" id="persetujuan_1">
	        Tolak</label>
        </td>
	</tr>
	<tr>
		<td colspan="4"><strong>Catatan : 
	    </strong>		  <input  type="text"  name="namafile5" style="padding:2px; width:100%;" placeholder="Wajib di Isi Jika Permohonan di tolak, Jika di setujui maka beri tanda '-' " required></td>
	</tr>
</table>

            </div>
            
            <div class="modal-footer">
              <button type="submit" class="btn btn-primary"><i class="fa fa-save fa-fw"></i> Simpan Persetujuan Surat Keterangan Kuliah </button>  
              <button type="button" class="btn btn-danger " data-dismiss="modal"> <i class="fa fa-close fa-fw"></i>Kembali</button>
            </div>
  
            
       </form>
