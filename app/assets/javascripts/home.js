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
});
