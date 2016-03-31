$(window).load(function(){
     setTimeout(function(){
       $(".alert").fadeOut();
   }, 1500)
 })

$(document).ready(function () {
   $(document).on("click", "[data-behaviour='delete']", function (event) {
      event.preventDefault();

      swal({
         title: 'Are you sure?',
         text: 'Once you delete this game/review you will not be able to retrieve it again.',
         type: 'warning',
         showCancelButton: true,
         confirmButtonColor: '#DD6B55',
         confirmButtonText: 'Yes, delete it!',
         cancelButtonText: 'No, cancel plx!',
         closeOnConfirm: true,
         closeOnCancel: true
      }, function (confirmed) {
         if (confirmed) {
            $.ajax({
               url: $(this).attr("href"),
               dataType: "JSON",
               method: "DELETE",
               success: function () {
                  swal( 'Deleted!', 'success' );
                  // window.location.href = "/";
                  window.location.reload(true);
                  window.location = window.location.origin + "?nocache=true";
               }
            });
         }

      });

   });
});
