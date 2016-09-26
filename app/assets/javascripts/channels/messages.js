App.messages = App.cable.subscriptions.create('MessagesChannel', {  
  received: function(data) {
    alert(data)
    // debugger;
    // console.log(data)
    // $("#messages").removeClass('hidden')
    // return $('#messages').append(data.message);
  },

  transmit: function(data) {
    return this.perform('transmit', {message: this.message})
  }
});

$(document).on('turbolinks:load', function() {
  submitNewMessage();
});

function submitNewMessage(){
  $('textarea#message_content').keydown(function(event) {
    if (event.keyCode == 13) {
        App.messages.transmit(event.target.value)
        // $('[data-send="message"]').click();
        $('[data-textarea="message"]').val(" ")
        return false;
     }
  });
}

// App.room = App.cable.subscriptions.create "RoomChannel", connected: -> # Called when the subscription is ready for use on the server disconnected: -> # Called when the subscription has been terminated by the server received: (data) -> # Called when there's incoming data on the websocket for this channel speak: -> @perform 'speak'
// Read more at http://tutorials.pluralsight.com/ruby-ruby-on-rails/creating-a-chat-using-rails-action-cable#6Du6sjlBWhvpJpd4.99