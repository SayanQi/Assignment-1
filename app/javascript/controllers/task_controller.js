import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = {
    src: String
  }
  
  connect(state = true) {
    if (state === true) {
      this.intervalId = setInterval(() => {
        this.element.setAttribute('src', this.srcValue);
      }, 1000);
    }else {
      clearInterval(this.intervalId); // Clear the interval when state is false
    }
  }
  
  disableConnect() {
    this.connect(false);
  }

  enableConnect() {
    this.connect(true); // Enable connect
  }
  
  disconnect() {
    console.log("disconnected")
    clearInterval(this.interval)
  }
}