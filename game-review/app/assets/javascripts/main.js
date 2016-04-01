$(window).load(function(){
     setTimeout(function(){
       $(".alert").fadeOut();
   }, 1500)
 })

$(document).ready(function () {
   $(document).on("click", "[data-behaviour='game-delete']", function (event) {
      event.preventDefault();
      var href = $(this).attr("href");
      swal({
         title: 'Are you sure?',
         text: 'Once you delete this game there is no going back.',
         type: 'warning',
         showCancelButton: true,
         confirmButtonColor: '#DD6B55',
         confirmButtonText: 'Yes, delete it!',
         cancelButtonText: 'No, cancel please!',
         closeOnConfirm: true,
         closeOnCancel: true
      }, function (confirmed) {
         if (confirmed) {
            $.ajax({
               url: href,
               dataType: "JSON",
               method: "DELETE",
               success: function () {
                  swal( 'Deleted!', 'Your request was a success!', 'success' );
                  // window.location.href = "/";
                  window.location.reload(true);
                  window.location = window.location.origin + "?nocache=true";
               }
            });
         }

      });

   });
});

$(document).ready(function () {
   $(document).on("click", "[data-behaviour='review-delete']", function (event) {
      event.preventDefault();
      var href = $(this).attr("href");
      swal({
         title: 'Are you sure?',
         text: 'Once you delete this review there is no going back.',
         type: 'warning',
         showCancelButton: true,
         confirmButtonColor: '#DD6B55',
         confirmButtonText: 'Yes, delete it!',
         cancelButtonText: 'No, cancel please!',
         closeOnConfirm: true,
         closeOnCancel: true
      }, function (confirmed) {
         if (confirmed) {
            $.ajax({
               url: href,
               dataType: "JSON",
               method: "DELETE",
               success: function () {
                  swal( 'Deleted!', 'Your request was a success!', 'success' );
                  // window.location.href = "/";
                  window.location.reload(true);
                  window.location = window.location.origin + "?nocache=true";
               }
            });
         }

      });

   });
});
