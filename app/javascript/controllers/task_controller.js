import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = {
    src: String
  }

  connect() {
    this.intervalId = setInterval(() => {
      console.log(this.srcValue)
      this.element.setAttribute('src', this.srcValue)
    }, 1000); 
  }

  disconnect() {
    console.log("disconnected")
    clearInterval(this.interval)
  }
}
// app/javascript/controllers/refresh_turbo_frame_controller.js
// import { Controller } from "stimulus";

// export default class extends Controller {
//   static targets = ["frame"];

//   connect() {
//     this.refreshFrame();
//     this.intervalId = setInterval(() => {
//       this.refreshFrame();
//     }, 1000);
//   }

//   disconnect() {
//     clearInterval(this.intervalId);
//   }

//   refreshFrame() {
//     console.log("feresh frame")
//     this.frameTargets.forEach(frame => {
//       frame.src = frame.dataset.src;
//     });
//   }
// }
