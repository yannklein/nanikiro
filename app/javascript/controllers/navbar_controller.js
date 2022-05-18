import { Controller } from '@hotwired/stimulus'

export default class extends Controller {
  // static targets = [ 'test' ]

  connect() {
    console.log('Hello from navbar_controller.js')
    // console.log(this.testTarget)
  }

  openProfile(event) {
    event.currentTarget.classList.toggle("active")
  }
}