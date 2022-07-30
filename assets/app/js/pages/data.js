var table;

$(document).ready(function() {
  // ajaxcsrf();
  table = $("#pages").DataTable({
    initComplete: function() {
      var api = this.api();
      $("#pages_filter input")
        .off(".DT")
        .on("keyup.DT", function(e) {
          api.search(this.value).draw();
        });
    },
    dom:
      "<'row'<'col-sm-3'l><'col-sm-6 text-center'B><'col-sm-3'f>>" +
      "<'row'<'col-sm-12'tr>>" +
      "<'row'<'col-sm-5'i><'col-sm-7'p>>",
    buttons: [
      {
        extend: "copy",
        exportOptions: { columns: [1,2,3,4,5] }
      },
      {
        extend: "print",
        exportOptions: { columns: [1,2,3,4,5] }
      },
      {
        extend: "excel",
        exportOptions: { columns: [1,2,3,4,5] }
      },
      {
        extend: "pdf",
        exportOptions: { columns: [1,2,3,4,5] }
      }
    ],
    oLanguage: {
      sProcessing: "loading..."
    },
    processing: true,
    serverSide: true,
    ajax: {
      url: base_url + "pages/data",
      type: "POST"
    },
    columns: [
      {
        data: "page_id",
        orderable: false,
        searchable: false
      },
      { data: "page_name" },
      { data: "title" },
      { data: "slug" },
      { data: "page_link" },
      { data: "contents",
        "render": function ( data, type, row, meta ) {
      return data.length > 40 ? data.substr( 0, 38 )+'...' :
        data; }}
    ],
    columnDefs: [
      {
        searchable: false,
        targets: 6,
        data: "page_id",
        render: function(data, type, row, meta) {
          return `<div class="text-center">
             <a href="${base_url}pages/edit/${data}" class="btn btn-circle btn-sm btn-warning" title="edit category">
               <i class="fa fa-edit"></i>
             </a>`;
        }
      },
      {
        targets: 7,
        data: "page_id",
        render: function(data, type, row, meta) {
          return `<div class="text-center">
                  <input name="checked[]" class="check" value="${data}" type="checkbox">
                </div>`;
        }
      }
    ],
    order: [[0, "desc"]],
    rowId: function(a) {
      return a;
    },
    rowCallback: function(row, data, iDisplayIndex) {
      var info = this.fnPagingInfo();
      var page = info.iPage;
      var length = info.iLength;
      var index = page * length + (iDisplayIndex + 1);
      $("td:eq(0)", row).html(index);
    }
  });

  table
    .buttons()
    .container()
    .appendTo("#pages_wrapper .col-md-6:eq(0)");

  $(".select_all").on("click", function() {
    if (this.checked) {
      $(".check").each(function() {
        this.checked = true;
        $(".select_all").prop("checked", true);
      });
    } else {
      $(".check").each(function() {
        this.checked = false;
        $(".select_all").prop("checked", false);
      });
    }
  });

  $("#pages tbody").on("click", "tr .check", function() {
    var check = $("#pages tbody tr .check").length;
    var checked = $("#pages tbody tr .check:checked").length;
    if (check === checked) {
      $(".select_all").prop("checked", true);
    } else {
      $(".select_all").prop("checked", false);
    }
  });

  $("#bulk").on("submit", function(e) {
    e.preventDefault();
    e.stopImmediatePropagation();

    $.ajax({
      url: $(this).attr("action"),
      data: $(this).serialize(),
      type: "POST",
      success: function(respon) {
        if (respon.status) {
          Swal({
            title: "Berhasil",
            text: respon.total + " data berhasil dihapus",
            type: "success"
          });
        } else {
          Swal({
            title: "Gagal",
            text: "Tidak ada data yang dipilih",
            type: "error"
          });
        }
        reload_ajax();
      },
      error: function() {
        Swal({
          title: "Gagal",
          text: "Ada data yang sedang di gunakan !",
          type: "error"
        });
      }
    });
  });

});

function bulk_delete() {
  if ($("#pages tbody tr .check:checked").length == 0) {
    Swal({
      title: "Gagal",
      text: "Tidak ada data yang dipilih",
      type: "error"
    });
  } else {
    Swal({
      title: "Anda yakin?",
      text: "Data akan dihapus!",
      type: "warning",
      showCancelButton: true,
      confirmButtonColor: "#3085d6",
      cancelButtonColor: "#d33",
      confirmButtonText: "Hapus!"
    }).then(result => {
      if (result.value) {
        $("#bulk").submit();
      }
    });
  }
}
