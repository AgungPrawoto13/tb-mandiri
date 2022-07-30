          <footer class="footer">
            <div class="container-fluid clearfix">
              <span class="text-muted d-block text-center text-sm-left d-sm-inline-block">Copyright © 2019 <a href="http://www.bootstrapdash.com/" target="_blank">Bootstrapdash</a>. All rights reserved.</span>
              <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">Hand-crafted & made with <i class="mdi mdi-heart text-danger"></i>
              </span>
            </div>
          </footer>
          <!-- partial -->
        </div>
        <!-- main-panel ends -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
    <!-- plugins:js -->
    <script src="<?= base_url('assets/template/back/'); ?>vendors/js/vendor.bundle.base.js"></script>
    <script src="<?= base_url('assets/template/back/'); ?>vendors/js/vendor.bundle.addons.js"></script>
    <script src="<?= base_url('assets/template/back/'); ?>vendors/froala_editor/js/froala_editor.pkgd.min.js"></script>
    <script src="<?= base_url('assets/template/back/'); ?>vendors/froala_editor/js/plugins/quick_insert.min.js"></script>
    <script src="<?= base_url('assets/template/back/'); ?>vendors/sweetalert2/sweetalert2.all.min.js"></script>
    <script src="<?= base_url('assets/template/back/'); ?>vendors/datatables/jquery.dataTables.min.js"></script>
    <script src="<?= base_url('assets/template/back/'); ?>vendors/datatables/dataTables.bootstrap4.min.js"></script>
    <script src="<?= base_url('assets/template/back/'); ?>vendors/plugins/Buttons-1.6.1/js/dataTables.buttons.min.js"></script>
    <script src="<?= base_url('assets/template/back/'); ?>vendors/plugins/JSZip-2.5.0/jszip.min.js"></script>
    <script src="<?= base_url('assets/template/back/'); ?>vendors/plugins/pdfmake-0.1.36/pdfmake.min.js"></script>
    <script src="<?= base_url('assets/template/back/'); ?>vendors/plugins/pdfmake-0.1.36/vfs_fonts.js"></script>
    <script src="<?= base_url('assets/template/back/'); ?>vendors/plugins/Buttons-1.6.1/js/buttons.bootstrap4.min.js"></script>
    <script src="<?= base_url('assets/template/back/'); ?>vendors/plugins/Buttons-1.6.1/js/buttons.html5.min.js"></script>
    <script src="<?= base_url('assets/template/back/'); ?>vendors/plugins/Buttons-1.6.1/js/buttons.print.min.js"></script>
    <script src="<?= base_url('assets/template/back/'); ?>vendors/plugins/Buttons-1.6.1/js/buttons.colVis.min.js"></script>
    <script src="<?= base_url('assets/template/back/'); ?>vendors/plugins/JSZip-2.5.0/jszip.min.js"></script>
    <!-- endinject -->
    <!-- Plugin js for this page-->
    <!-- End plugin js for this page-->
    <!-- inject:js -->
    <script src="<?= base_url('assets/template/back/'); ?>js/shared/off-canvas.js"></script>
    <script src="<?= base_url('assets/template/back/'); ?>js/shared/misc.js"></script>
    <!-- endinject -->
    <!-- Custom js for this page-->
    <!-- End custom js for this page-->
    <script type="text/javascript">
      $(document).ready(function(){
        $('.froala-editor').froalaEditor({
          theme: 'royal',
          quickInsertTags: ['p','div'],
          toolbarButtons: ['fullscreen', '|', 'bold', 'italic', 'strikeThrough', 'underline', '|', 'align', 'insertTable', 'insertLink','formatOL', 'formatUL', '|', 'html']
        });
      });
      $.fn.dataTableExt.oApi.fnPagingInfo = function(oSettings) {
        return {
          "iStart": oSettings._iDisplayStart,
          "iEnd": oSettings.fnDisplayEnd(),
          "iLength": oSettings._iDisplayLength,
          "iTotal": oSettings.fnRecordsTotal(),
          "iFilteredTotal": oSettings.fnRecordsDisplay(),
          "iPage": Math.ceil(oSettings._iDisplayStart / oSettings._iDisplayLength),
          "iTotalPages": Math.ceil(oSettings.fnRecordsDisplay() / oSettings._iDisplayLength)
        };
      };

      // function ajaxcsrf() {
      // var csrfname = '<?= $this->security->get_csrf_token_name() ?>';
      // var csrfhash = '<?= $this->security->get_csrf_hash() ?>';
      // var csrf = {};
      // csrf[csrfname] = csrfhash;
      // $.ajaxSetup({
      //   "data": csrf
      // });
      // }

    function reload_ajax() {
      table.ajax.reload(null, false);
    }
    </script>
  </body>
</html>