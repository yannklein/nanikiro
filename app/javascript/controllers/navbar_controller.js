import { Controller } from '@hotwired/stimulus'

export default class extends Controller {

  connect() {
    console.log('Hello from navbar_controller.js')
  }

  openProfile(event) {
    event.currentTarget.classList.toggle("active")
  }
}