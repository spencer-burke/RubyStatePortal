import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="manager-dashboard"
export default class extends Controller {
  connect() {
    // Create a bound function reference that we can use in both connect and disconnect.
    this.boundCloseOnEscape = this.closeOnEscape.bind(this);
    document.addEventListener("keydown", this.boundCloseOnEscape);
  }

  disconnect() {
    // Remove the exact same bound function reference.
    document.removeEventListener("keydown", this.boundCloseOnEscape);
  }

  closeOnEscape(event) {
    if (event.key === "Escape") {
      this.closeModal();
    }
  }

  closeModal() {
    const modalFrame = document.getElementById("modal");
    if (modalFrame) {
      modalFrame.removeAttribute("src");
      modalFrame.innerHTML = "";
    }
  }
}
