App.messages = App.cable.subscriptions.create('MessagesChannel', {
  received: function(data) {
    $("#messages").removeClass('hidden')
    return $('#messages').append(this.renderMessage(data));
  },
  renderMessage: function(data) {
    return $('</p>').text(' ' + data.message).prepend($('<b/>').text(data.user + ':'));
  }
});
