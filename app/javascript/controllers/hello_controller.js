// reload_turbo_frame_controller.js
import { Controller } from "stimulus";
import { Turbo } from "@hotwired/turbo-rails";

export default class extends Controller {
  // Action to reload the Turbo Frame
  reload() {
    console.log("helo cont");
    console.log(this.element);
    const turboFrame = this.element;
    Turbo.visit(turboFrame.src, { action: "replace" }); // Reload the Turbo Frame
  }
}
