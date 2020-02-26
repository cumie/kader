<?php include "includes/conf.php";

  if(isset($_POST['Simpan'])) {
    // $id_pengguna = 2;
      $id_anggota = $_POST['id_anggota'];
      $nama_pendidikan = $_POST['nama_pendidikan'];
      $jenjang_pendidikan = $_POST['jenjang_pendidikan'];
      $tanggal_ijazah = $_POST['tanggal_ijazah'];
      $file_bukti = $_POST['file_bukti'];
      // $foto = $_FILES['file']['name'];
      $keterangan = $_POST['keterangan'];
      $level = 2;
      $opsi = "pendidikan";

        $mySql = "INSERT INTO `pendidikan`(`status`, `id_anggota`, `tanggal_ijazah`, `nama_pendidikan`, `jenjang_pendidikan`, `keterangan`, `file_bukti`) VALUES ( '1',?,?,?,?,?,? ) ";
        $database = new Database();
        $db = $database->getConnection();
        $stmt = $db->prepare($mySql);
        $stmt->bindParam(1, $id_anggota);
        $stmt->bindParam(2, $tanggal_ijazah);
        $stmt->bindParam(3, $nama_pendidikan);
        $stmt->bindParam(4, $jenjang_pendidikan);
        $stmt->bindParam(5, $keterangan);
        $stmt->bindParam(6, $file_bukti);
        $stmt->execute();
        if($stmt) {
           ?>
        <div class="alert alert-success" role="alert">
          <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <strong>Tambah Data Pendidikan Berhasil!</strong>
        </div>
<?php
        }
  }

if(isset($_POST['Edit'])) {
      $id = $_POST['id'];
      $id_anggota = $_POST['id_anggota'];
      $nama_pendidikan = $_POST['nama_pendidikan'];
      $jenjang_pendidikan = $_POST['jenjang_pendidikan'];
      $tanggal_ijazah = $_POST['tanggal_ijazah'];
      $file_bukti = $_POST['file_bukti']['name'];
      $keterangan = $_POST['keterangan'];


        $mySql = "UPDATE  `pendidikan` SET `id_anggota`=?, `tanggal_ijazah`=?, `nama_pendidikan`=?, `jenjang_pendidikan`=?, `keterangan`=?, `file_bukti`=? WHERE id=? ";
        $database = new Database();
        $db = $database->getConnection();
        $stmt = $db->prepare($mySql);
        $stmt->bindParam(1, $id_anggota);
        $stmt->bindParam(2, $tanggal_ijazah);
        $stmt->bindParam(3, $nama_pendidikan);
        $stmt->bindParam(4, $jenjang_pendidikan);
        $stmt->bindParam(5, $keterangan);
        $stmt->bindParam(6, $file_bukti);
        $stmt->bindParam(7, $id);
       $stmt->execute();

    if($stmt) {
   ?>
    <div class="alert alert-success" role="alert">
      <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      <strong>Edit Data Pendidikan Berhasil!</strong>
    </div>
<?php
    }
  }

if(isset($_POST['Hapus'])) {
      $id = $_POST['id'];

      $Sql = "DELETE FROM pendidikan WHERE id=? ";
        $database = new Database();
        $db = $database->getConnection();
        $stmt = $db->prepare($Sql);
        $stmt->bindParam(1, $id);
       $stmt->execute();

       if($stmt) {
    ?>
    <div class="alert alert-success" role="alert">
      <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      <strong>Hapus Data Pendidikan Berhasil!</strong>
    </div>
<?php
    }
  }
  if(isset($_POST['Aktif'])) {
        $id = $_POST['id'];
        $id_anggota = $_POST['id_anggota'];
        $nama = $_POST['nama'];

        $mySql = "UPDATE pendidikan SET status=1 WHERE id=? ";
          $database = new Database();
          $db = $database->getConnection();
          $stmt = $db->prepare($mySql);
          $stmt->bindParam(1, $id);
         $stmt->execute();
         if($stmt) {

      ?>
     <div class="alert alert-success" role="alert">
    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
    <strong>Ubah Status Berhasil!</strong> pendidikan oleh <?php echo $nama; ?> telah di Aktifkan!
  </div>
  <?php
      }
      }

  if(isset($_POST['Non-Aktif'])) {
        $id = $_POST['id'];
        $id_anggota = $_POST['id_anggota'];
        $nama = $_POST['nama'];

        $mySql = "UPDATE pendidikan SET status=0 WHERE id=? ";
          $database = new Database();
          $db = $database->getConnection();
          $stmt = $db->prepare($mySql);
          $stmt->bindParam(1, $id);
         $stmt->execute();
         if($stmt) {

      ?>
     <div class="alert alert-success" role="alert">
    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
    <strong>Ubah Status Berhasil!</strong> pendidikan oleh <?php echo $nama; ?> telah di Non-Aktifkan!
  </div>
  <?php
      }
      }
  ?>
    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">Data Pendidikan</h1>
    <div class="row">
      <div class="col-md-10">
       <p class="mb-4">Data Pendidikan merupakan data Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
        </div>
         <div class="col-md-2">
        <a href="#" class="btn btn-success btn-icon-split" data-toggle="modal" data-target="#pendidikanModal">
          <span class="icon ">
            <i class="fas fa-plus"></i>
          </span>
          <span class="text">Tambah Data</span>
        </a>
      </div>
    </div>

<?php
  include "includes/badge1.php";
?>
          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>No</th>
                      <th>Id Anggota</th>
                      <th>Tempat</th>
                      <th>Jenjang</th>
                      <th>File Bukti</th>
                      <th>Status</th>
                      <th>Opsi</th>
                    </tr>
                  </thead>
                  <tbody>
                  <?php
							$mySql = "SELECT pendidikan.*, anggota.id AS id_anggota, anggota.nama FROM pendidikan LEFT JOIN anggota ON anggota.id=pendidikan.id_anggota ORDER BY updated_at DESC";
							$database = new Database();
							$db = $database->getConnection();
							$stmt = $db->prepare($mySql);
							// $stmt->bindParam(1, $id_pengguna);
							$stmt->execute();
							$num = $stmt->rowCount();
							$no  = 1;
							if($num==0){
								?>
    								<tr>
    									<td colspan="7">Data Tidak Ada</td>
    								</tr>
								<?php
      							} else {
      								while ($row = $stmt->fetch(PDO::FETCH_ASSOC)){
      									extract($row);
                        if($status==1) { $statusx = 'Aktif';}
                                  else { $statusx ='Pending';}
                    ?>
                    <tr>
                      <td><?php echo $no++; ?></td>
                      <td>
                        <form method="POST" action="anggotadetail">
                        <input type="hidden" name="id" value="<?php echo $id_anggota; ?>" >
                          <button type="submit"  class="btn btn-link mt-n4 mb-n4 text-left"><?php echo $nama; ?></a></button>
                        </form>
                      </td>
                      <td><?php echo $nama_pendidikan; ?></td>
                      <td><?php echo $jenjang_pendidikan; ?></td>
                      <td><?php echo $file_bukti; ?></td>
                      <td><?php echo $statusx; ?></td>
                      <td>
                      <?php if($status==1) { ?>
                         <a href="#" type="button" class="btn btn-warning btn-icon-split"  data-toggle="modal" data-target="#verifModal<?php echo $id; ?>">
              						  <span class="icon "><i class="fas fa-times"></i></span>
            						 </a>
                      <?php } else { ?>
                          <a href="#" type="button" class="btn btn-success btn-icon-split"  data-toggle="modal" data-target="#verifModal<?php echo $id; ?>">
            						          <span class="icon "><i class="fas fa-check"></i></span>
            							</a>
                      <?php } ?>
                          <a href="#" type="button" class="btn btn-info btn-icon-split"  data-toggle="modal" data-target="#editModal<?php echo $id; ?>">
            						          <span class="icon "><i class="fas fa-edit"></i></span>
            							</a>
            							<a href="#" type="button" class="btn btn-danger btn-icon-split"  data-toggle="modal" data-target="#deleteModal<?php echo $id; ?>">
            						  <span class="icon "><i class="fas fa-trash"></i></span>
            							</a>
                      </td>
                    </tr>

                    <!-- spesial edition modal edit -->
                    <div class="modal fade" id="editModal<?php echo $id; ?>" role="dialog">
                      <div class="modal-dialog modal-lg">
                        <!-- Modal content-->
                        <div class="modal-content">
                          <div class="modal-header">
                            <h5 class="modal-title" id="pendidikanModalLabel">Update Data pendidikan <?php echo $nama; ?></h5>
                            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                              <span aria-hidden="true">×</span>
                            </button>
                          </div>
                          <div class="modal-body">
                            <form role="form" action="" method="post" enctype="multipart/form-data">
                                <input type="hidden" name="id" value="<?php echo $id; ?>">
                                <input type="hidden" name="id_anggota" value="<?php echo $id_anggota; ?>">
                                <input type="hidden" name="nama" value="<?php echo $nama; ?>">
                                <div class="form-group row">
                                  <div class="col-md-6">
                                    <label for="id_anggota" class="col-form-label">Id Anggota</label>
                                      <select class="form-control selectpicker" data-live-search="true" name="id_anggota" id="id_anggota">
                                        <?php
                                          $mySqlAnggota = "SELECT pendidikan.*, anggota.id AS id_anggota, anggota.nama FROM pendidikan LEFT JOIN anggota ON anggota.id=pendidikan.id_anggota ORDER BY updated_at DESC";
                                          $databaseAnggota = new Database();
                                          $dba = $databaseAnggota->getConnection();
                                          $stmtAnggota = $dba->prepare($mySqlAnggota);
                                          $stmtAnggota->execute();

                                          while ($rowa = $stmtAnggota->fetch(PDO::FETCH_ASSOC)) {
                                        ?>
                                        <option value="<?php echo $rowa['id']; ?>" <?php if($id_anggota==$rowa['id_anggota']){echo "selected";} ?>><?php echo $rowa['nama']; ?></option>
                                      <?php } ?>
                                      </select>
                                  </div>
                                  <div class="col-md-6">
                                    <label for="nama_pendidikan" class="col-form-label">Nama Pendidikan</label>
                                    <input type="text"  value="<?php echo $nama_pendidikan; ?>"  class="form-control" id="nama_pendidikan" name="nama_pendidikan">
                                  </div>
                                </div>
                                <div class="form-group row">
                                  <div class="col-md-8">
                                    <label for="jenjang_pendidikan" class="col-form-label">Jenjang Pendidikan</label>
                                    <input type="text" class="form-control" id="jenjang_pendidikan" value="<?php echo $jenjang_pendidikan; ?>"  name="jenjang_pendidikan">
                                  </div>
                                  <div class="col-md-4">
                                    <label for="tanggal_ijazah" class="col-form-label">Tanggal Ijazah</label>
                                    <input type="date" class="form-control"  value="<?php echo $tanggal_ijazah; ?>" id="tanggal_ijazah" name="tanggal_ijazah">
                                  </div>
                                </div>
                                <div class="form-group row">
                                  <div class="col-md-12">
                                    <label for="file_bukti" class="col-form-label">File Bukti</label>
                                    <!-- Upload File -->
                                    Select file : <input type='file' name='file_bukti' id='file_bukti' class='form-control' ><br>
                                    <input type='button' class='btn btn-info' value='Upload' id='btn_upload'>

                                    <!-- Preview-->
                                    <div id='preview'></div>
                                  </div>
                                </div>

                                <div class="form-group">
                                  <label for="keterangan" class="col-form-label"> Keterangan </label>
                                  <textarea class="form-control" id="keterangan" name="keterangan"> <?php echo $keterangan; ?> </textarea>
                                </div>

                                <div class="modal-footer">
                                  <button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
                                  <button type="submit" name="Edit" class="btn btn-success">Simpan</button>
                                </div>
                          </form>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- end edit modal -->

              <!-- delete modal -->
              <div class="modal fade" id="deleteModal<?php echo $id; ?>" role="dialog">
                <div class="modal-dialog">
                  <!-- Modal content-->
                  <div class="modal-content">
                    <div class="modal-header">
                      <h5 class="modal-title" id="pendidikanModalLabel">Hapus Data pendidikan <?php echo $nama; ?></h5>
                      <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                      </button>
                    </div>
                    <div class="modal-body">
                      <form role="form" action="" method="post">
                          <input type="hidden" name="id" value="<?php echo $id; ?>">
                          <input type="hidden" name="id_anggota" value="<?php echo $id_anggota; ?>">
                          <input type="hidden" name="nama" value="<?php echo $nama; ?>">
                          <div class="form-group">
                            Yakin menghapus data ini? baik data pendidikan dan data lain yang berkaitan dengan pendidikan ini akan dihapus?
                          </div>

                          <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
                            <button type="submit" name="Hapus" class="btn btn-success">Hapus</button>
                          </div>
                        </form>
                    </div>
                  </div>
                </div>
              </div>
              <!-- end delete modal -->
              <!-- verif modal -->
              <div class="modal fade" id="verifModal<?php echo $id; ?>" role="dialog">
                <div class="modal-dialog">
                  <!-- Modal content-->
                  <div class="modal-content">
                    <div class="modal-header">
                      <h5 class="modal-title" id="anggotaModalLabel">Verifikasi Data pendidikan <?php echo $nama; ?></h5>
                      <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                      </button>
                    </div>
                    <div class="modal-body">
                      <form role="form" action="" method="post">
                          <input type="hidden" name="id" value="<?php echo $id; ?>">
                          <input type="hidden" name="id_anggota" value="<?php echo $id_anggota; ?>">
                          <input type="hidden" name="nama" value="<?php echo $nama; ?>">
                          <div class="form-group">
                            yakin merubah Status Verifikasi menjadi <?php  if($status==1) { echo "Tidak "; } ?>Aktif?
                          </div>

                          <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
                            <?php  if($status==0) {
                            ?>
                            <button type="submit" name="Aktif" class="btn btn-success">Aktifkan</button>
                           <?php
                            } else { ?>
                            <button type="submit" name="Non-Aktif" class="btn btn-success">Bekukan</button>
                            <?php } ?>
                          </div>
                        </form>
                    </div>
                  </div>
                </div>
              </div>
              <!-- end verif modal -->
                    <?php  }
                            }
                    ?>
                  </tbody>
                </table>
              </div>
            </div>
          </div>

<!-- batas -->
          <!-- Tambah pendidikan Modal-->
          <div class="modal fade" id="pendidikanModal" tabindex="-1" role="dialog" aria-labelledby="anggotaModalLabel" aria-hidden="true">
            <form role="form" action="" method="post" enctype="multipart/form-data">
              <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="anggotaModalLabel">Register Anggota Baru</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">×</span>
                    </button>
                  </div>
                  <div class="modal-body"><p>Tambahkan data Anggota, data anggota akan langsung aktif dan dapat mengakses sesuai username dan password terinput.</p>
                <div class="form-group row">
                  <div class="col-md-6">
                    <label for="id_anggota" class="col-form-label">Id Anggota</label>
                      <select class="form-control selectpicker" data-live-search="true" name="id_anggota" id="id_anggota">
                        <option value="">--Pilih Anggota--</option>
                        <?php
                          $mySqlAnggota = "SELECT anggota.id, anggota.nama, pendidikan.id_anggota FROM anggota LEFT JOIN pendidikan ON pendidikan.id_anggota = anggota.id";
                          $databaseAnggota = new Database();
                          $dba = $databaseAnggota->getConnection();
                          $stmtAnggota = $dba->prepare($mySqlAnggota);
                          $stmtAnggota->execute();

                          while ($rowa = $stmtAnggota->fetch(PDO::FETCH_ASSOC)) {
                        ?>
                        <option value="<?php echo $rowa['id']; ?>"><?php echo $rowa['nama']; ?></option>
                      <?php } ?>
                      </select>
                  </div>
                  <div class="col-md-6">
                    <label for="nama_pendidikan" class="col-form-label">Nama Pendidikan</label>
                    <input type="text"  value=""  class="form-control" id="nama_pendidikan" name="nama_pendidikan">
                  </div>
                </div>
                <div class="form-group row">
                  <div class="col-md-8">
                    <label for="jenjang_pendidikan" class="col-form-label">Jenjang Pendidikan</label>
                    <input type="text" class="form-control" id="jenjang_pendidikan" value=""  name="jenjang_pendidikan">
                  </div>
                  <div class="col-md-4">
                    <label for="tanggal_ijazah" class="col-form-label">Tanggal Ijazah</label>
                    <input type="date" class="form-control"  value="" id="tanggal_ijazah" name="tanggal_ijazah">
                  </div>
                </div>
                <div class="form-group row">
                  <div class="col-md-12">
                    <label for="file_bukti" class="col-form-label">File Bukti</label>
                    <!-- Upload File -->
                    Select file : <input type='file' name='file_bukti' id='file_bukti' class='form-control' ><br>
                    <input type='button' class='btn btn-info' value='Upload' id='btn_upload'>

                    <!-- Preview-->
                    <div id='preview'></div>
                  </div>
                </div>

                <div class="form-group">
                  <label for="keterangan" class="col-form-label"> Keterangan </label>
                  <textarea class="form-control" id="keterangan" name="keterangan"></textarea>
                </div>

                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
                  <button type="submit" name="Simpan" class="btn btn-success">Simpan</button>
                </div>
              </div>
            </div>
          </form>
          </div>
          <!-- end pendidikan -->

          <!-- Script -->
          <script type='text/javascript'>
          $(document).ready(function(){
              $('#btn_upload').click(function(){

                  var fd = new FormData();
                  var files = $('#file')[0].files[0];
                  fd.append('file',files);

                  // AJAX request
                  $.ajax({
                      url: 'pages/ajaxfile.php',
                      type: 'post',
                      data: fd,
                      contentType: false,
                      processData: false,
                      success: function(response){
                          if(response != 0){
                              // Show image preview
                              $('#preview').append("<img src='"+response+"' width='160' height='160' style='display: inline-block;'>");
                          }else{
                              alert('file not uploaded');
                          }
                      }
                  });
              });
          });
          </script>


          <script>
            window.setTimeout(function() {
              $(".alert").fadeTo(500, 0).slideUp(500, function(){
                  $(this).remove();
              });
          }, 3000);
          </script>
