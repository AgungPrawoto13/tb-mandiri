$(document).ready(function () {
    $('#formproducts').on('submit', function (e) {
        e.preventDefault();
        e.stopImmediatePropagation();
        var btn = $('#submit');
        console.log(btn);
        btn.attr('disabled', 'disabled').val('Wait...');
        $.ajax({
            url: $(this).attr('action'),
            data: new FormData(this),
            processData: false,
            contentType: false,
            type: 'POST',
            success: function (response) {

                btn.removeAttr('disabled').val('Save');
                if (response.status) {
                    Swal('Sukses', 'Product Berhasil disimpan', 'success')
                        .then((result) => {
                            if (result.value) {
                                window.location.href = base_url+'products';
                            }
                        });
                } else {
                    $.each(response.errors, function (key, val) {
                        $('[name="' + key + '"]').closest('.form-control').addClass('is-invalid');
                        $('[name="' + key + '"]').nextAll('.help').eq(0).text(val);
                        if (val === '') {
                            $('[name="' + key + '"]').closest('.form-control').removeClass('is-invalid').addClass('is-valid');
                            $('[name="' + key + '"]').nextAll('.help').eq(0).text('');
                        }
                    });
                }
            }
        })
    });
    $('#formproducts input').on('change', function () {
        $(this).closest('.form-control').removeClass('is-invalid').addClass('is-valid');
        $(this).nextAll('.help').eq(0).text('');
    });
});