'use strict';
$(document).ready(function () {
    // Basic sweet alerts
    $('.examples .message').on('click', function () {
        swal({
            title: 'Heres your text message in the sweet alert!',
            confirmButtonColor: '#00c0ef'
        }).done();
        return false;
    });
    $('.examples .primary_clr').on('click', function () {
        swal('Are you sure?', 'You will not be able to recover this imaginary file!').done();
        swal({
            title: 'Are you sure?',
            text: 'You will not be able to recover this imaginary file!',
            type: 'info',
            showCancelButton: true,
            confirmButtonColor: '#00c0ef',
            confirmButtonText: 'Primary!',
            cancelButtonColor: '#ff8080'
        }).done();
        return false;
    });
    $('.examples .info_clr').on('click', function () {
        swal('Are you sure?', 'You will not be able to recover this imaginary file!').done();
        swal({
            title: 'Are you sure?',
            text: 'You will not be able to recover this imaginary file!',
            type: 'info',
            showCancelButton: true,
            confirmButtonColor: '#668cff',
            cancelButtonColor: '#ff8080',
            confirmButtonText: 'Info!'
        }).done();
        return false;
    });
    $('.examples .warning_clr').on('click', function () {
        swal('Are you sure?', 'You will not be able to recover this imaginary file!').done();
        swal({
            title: 'Are you sure?',
            text: 'You will not be able to recover this imaginary file!',
            type: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#ffb300',
            cancelButtonColor: '#ff8080',
            confirmButtonText: 'Warning!'
        }).done();
        return false;
    });
    $('.examples .success_clr').on('click', function () {
        swal('Are you sure?', 'You will not be able to recover this imaginary file!').done();
        swal({
            title: 'Are you sure?',
            text: 'You will not be able to recover this imaginary file!',
            type: 'success',
            showCancelButton: true,
            confirmButtonColor: '#00bf86',
            cancelButtonColor: '#ff8080',
            confirmButtonText: 'Success!'
        }).done();
        return false;
    });
    $('.examples .danger_clr').on('click', function () {
        swal('Are you sure?', 'You will not be able to recover this imaginary file!').done();
        swal({
            title: 'Are you sure?',
            text: 'You will not be able to recover this imaginary file!',
            type: 'error',
            showCancelButton: true,
            confirmButtonColor: '#ff8080',
            cancelButtonColor: '#ffb300',
            confirmButtonText: 'Danger!'
        }).done();
        return false;
    });
    // End of basic sweet alerts

    // Advanced sweet alerts
    $('.examples .ajax-request').on('click', function () {
        swal({
            title: 'Submit email to run ajax request',
            input: 'email',
            showCancelButton: true,
            confirmButtonText: 'Submit',
            confirmButtonColor: '#00c0ef',
            cancelButtonColor: '#ff8080',
            width: 600,
            showLoaderOnConfirm: true,
            preConfirm: function (email) {
                return new Promise(function (resolve, reject) {
                    setTimeout(function () {
                        if (email === 'taken@example.com') {
                            reject('This email is already taken.');
                        } else {
                            resolve();
                        }
                    }, 2000);
                });
            },
            allowOutsideClick: false
        }).then(function (email) {
            swal({
                type: 'success',
                title: 'Ajax request finished!',
                html: 'Submitted email: ' + '<strong>' + email + '</strong>'
            });
        }).done();
        return false;
    });
    $('.examples .chaining-modals').on('click', function () {
        swal.setDefaults({
            confirmButtonText: 'Next &rarr;',
            showCancelButton: true,
            animation: false,
            cancelButtonColor: '#ff8080',
            confirmButtonColor: '#00c0ef',
            progressSteps: ['1', '2', '3']
        });

        var steps = [
            {title: 'Step 1', text: 'Chaining swal2 modals is easy'},
            'Step 2',
            'Step 3'
        ];

        swal.queue(steps).then(function () {
            swal.resetDefaults();
            swal({title: 'All done!', confirmButtonText: 'Lovely!', showCancelButton: false});
        }, function () {
            swal.resetDefaults();
        });
        return false;
    });
    $('.examples .dynamic-queue').on('click', function () {
        swal.queue([
            {
                title: 'Your public IP',
                confirmButtonText: 'Show my public IP',
                text: 'Your public IP will be received via AJAX request',
                currentProgressStep: 0,
                showLoaderOnConfirm: true,
                confirmButtonColor: '#ffa000',
                preConfirm: function () {
                    return new Promise(function (resolve) {
                        $.get('https://api.ipify.org/?format=json')
                            .done(function (data) {
                                swal.insertQueueStep(data.ip);
                                resolve();

                            });
                    });
                }
            }
        ]).done();
        return false;
    });
    // End of advanced sweet alerts

    // Different sweet alerts
    $('.examples .title-text').on('click', function () {
        swal({
            title: 'The Internet?',
            text: 'That thing is still around?',
            type: 'question',
            confirmButtonColor: '#00c0ef'
        }).done();
        return false;
    });
    $('.examples .success').on('click', function () {
        swal({
            title: 'Good job!',
            text: 'You clicked the button!',
            type: 'success',
            confirmButtonColor: '#00c0ef'
        }).done();
        return false;
    });
    $('.examples .timer').on('click', function () {
        swal({
            title: 'Auto close alert!',
            text: 'I will close in 2 seconds.',
            timer: 2000,
            confirmButtonColor: '#00c0ef',
            showConfirmButton: false
        }).done();
        return false;
    });
    $('.showcase.sweet').on('click', function () {
        swal({
            title: 'Oops...',
            text: 'Something went wrong!',
            type: 'error',
            confirmButtonColor: '#00c0ef'
        }).done();
        return false;
    });
    $('.examples .html_ex').on('click', function () {
        swal({
            title: '<i>HTML</i> <u>example</u>',
            type: 'info',
            html: 'You can use <b>bold text</b>, ' +
            '<a href="#">links</a> ' +
            'and other HTML tags',
            showCloseButton: true,
            showCancelButton: true,
            confirmButtonText: '<i class="fa fa-thumbs-up"></i> Great!',
            confirmButtonColor: '#00c0ef',
            cancelButtonText: '<i class="fa fa-thumbs-down"></i>'
        }).done();
        return false;
    });
    // End of Different sweet alerts

    // Sweet alert with different images
    $('.examples .custom-image').on('click', function () {
        swal({
            title: 'Sweet!',
            text: 'Modal with a custom image.',
            imageUrl: 'img/authors/avatar1.jpg',
            confirmButtonColor: '#00c0ef',
            animation: false
        }).done();
        return false;
    });
    $('.examples .custom-width-padding-background').on('click', function () {
        swal({
            title: 'Custom width, padding, background.',
            width: 600,
            padding: 100,
            confirmButtonColor: '#00c0ef',
            background: '#fff url(img/authors/bg.jpg)'
        }).done();
        return false;
    });
    $('.examples .warning.confirm').on('click', function () {
        swal({
            title: 'Are you sure?',
            text: 'You won\'t be able to revert this!',
            type: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#00c0ef',
            cancelButtonColor: '#ff8080',
            confirmButtonText: 'Yes, delete it!'
        }).then(function () {
            swal({
                title: 'Deleted!',
                text: 'Your file has been deleted!',
                type: 'success',
                confirmButtonColor: '#00c0ef'
            }).done();
        });
        return false;
    });
    $('.examples .warning.cancel').on('click', function () {
        swal({
            title: 'Are you sure?',
            text: 'Buttons below are styled with Bootstrap classes',
            type: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#00c0ef',
            cancelButtonColor: '#ff8080',
            confirmButtonText: 'Yes, delete it!',
            cancelButtonText: 'No, cancel!',
            confirmButtonClass: 'btn btn-success',
            cancelButtonClass: 'btn btn-danger'
        }).then(function () {
            swal({
                title: 'Deleted!',
                text: 'Your file has been deleted!',
                type: 'success',
                confirmButtonColor: '#00c0ef'
            }).done();
        }, function (dismiss) {
            if (dismiss === 'cancel') {
                swal({
                    title: 'Cancelled',
                    text: 'Your imaginary file is safe :)',
                    type: 'error',
                    confirmButtonColor: '#00c0ef'
                }).done();
            }
        });
        return false;
    });
    $('.examples .jqueryhtml').on('click', function () {
        swal({
            title: 'jQuery HTML example',
            confirmButtonColor: '#00c0ef',
            html: $('<div>')
                .addClass('some-class')
                .text('jQuery is everywhere.')
        });
        return false;
    });
});