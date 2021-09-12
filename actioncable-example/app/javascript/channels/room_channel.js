import consumer from "./consumer"
document.addEventListener('turbolinks:load', () =>{

  const element = document.getElementById('room-id');
  const room_id = element.getAttribute('data-room-id');

  console.log(room_id)
  consumer.subscriptions.create({ channel: "RoomChannel", room_id: room_id }, {
    connected() {
      console.log("Connetcted the room channel" + room_id)
    },

    disconnected() {
      // Called when the subscription has been terminated by the server
    },

    received(data) {
      console.log(data)
    }
  });

})
