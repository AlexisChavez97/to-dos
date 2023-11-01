import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["modal"]

  hideModal() {
    this.element.parentElement.removeAttribute("src")
    this.modalTarget.remove()
  }

  submitEnd(e) {
    if (e.detail.success) {
      this.hideModal()
    }
  }
}