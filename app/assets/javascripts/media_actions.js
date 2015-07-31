$(function(){
  $('.actions').find('a').on('click', function (e) {
    e.preventDefault();
    $(e.target).closest('.media').parent().remove();
  });
});
