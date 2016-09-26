App.messages = App.cable.subscriptions.create('MessagesChannel', {  
  received: function(data) {
    $("#messages").removeClass('hidden')
    return $('#messages').append(data.message);
  }
});

$(document).on('turbolinks:load', function() {
  submitNewMessage();
});

function submitNewMessage(){
  $('textarea#message_content').keydown(function(event) {
    if (event.keyCode == 13) {
        App.messages.send({message: event.target.value})
        $('[data-textarea="message"]').val(" ")
        return false;
     }
  });
}