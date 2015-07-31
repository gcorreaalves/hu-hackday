$(function(){
  $('.media img').on('click', function (e) {
    e.preventDefault();
    var $this = $(e.target).closest('.media');
    var modal_media = $('#media-modal');
    modal_media.find('#modal-city').text($this.find('.city').text());
    modal_media.find('.image').attr('src', $this.find('img').attr('data-image-standard'));
    modal_media.find('.img-profile').attr('src', $this.find('.img-profile').attr('src'));
    modal_media.find('.username').text($this.find('.username').text());
    modal_media.modal('show');
  });
});
