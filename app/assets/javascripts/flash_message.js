var HuReward = HuReward || {}

$(function(){

  HuReward.FlashMessage = (function(){
    function FlashMessage() {
      this.container = $('#flash-messages');
    }

    FlashMessage.prototype.error = function (message) {
      this.container.append(this.message('danger', message));
    }

    FlashMessage.prototype.success = function (message) {
      this.container.append(this.message('success', message));
    }

    FlashMessage.prototype.message = function (type, message) {
      return '<div class="alert alert-' + type + '">' +
            '  <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>' +
            '  <div id="flash_' + type + '">' + message + '</div>' +
            '</div>';
    }

    return new FlashMessage();
  })();
  });
