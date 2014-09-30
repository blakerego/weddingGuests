$(function () {

  function resizeImage() {
    var imageDiv = $('.top');
    var featuredImageHeight = imageDiv.height();
    var windowHeight = $(window).height();
    if (featuredImageHeight !== null && featuredImageHeight > windowHeight) {
      imageDiv.height(0.9 * windowHeight);
    }
  }

  $('#featuredImage').one('load', resizeImage());
  resizeImage();

  $('a[href*=#]:not([href=#])').click(function() {
    if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
      var target = $(this.hash);
      target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
      if (target.length) {
        $('html,body').animate({
          scrollTop: target.offset().top
        }, 1000);
        return false;
      }
    }
  });

  $('.maps').click(function () {
      $('.maps iframe').css("pointer-events", "auto");
  });

});


