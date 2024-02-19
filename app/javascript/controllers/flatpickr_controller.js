import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr"
export default class extends Controller {
  connect() {
    flatpickr(".pending-date", {
        enableTime: true,
        dateFormat: "Y-m-d H:i",
        minDate: Date.now()
    });
  }
}
