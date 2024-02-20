import { Turbo } from "@hotwired/turbo-rails";

document.addEventListener("turbo:load", function() {
  // Function to refresh the Turbo Frame every second
  function refreshTurboFrame() {
    const turboFrame = document.getElementById("task"); // Replace with the ID of your Turbo Frame
    Turbo.visit(turboFrame.src, { action: "replace" }); // Refresh the Turbo Frame content
  }
console.log("refresh js file")
  // Call refreshTurboFrame() every second using setInterval
  setInterval(refreshTurboFrame, 1000); // 1000 milliseconds = 1 second
});