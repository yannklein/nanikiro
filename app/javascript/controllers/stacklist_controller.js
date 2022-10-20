import { Controller } from '@hotwired/stimulus'

export default class extends Controller {
  // static targets = [ 'test' ]

  connect() {
    console.log('Hello from stacklist_controller.js')
    // console.log(this.testTarget)
    this.moving = false
  }
  showStack(e) {
    if (!this.moving) {
      console.log("moving");
      e.currentTarget.classList.toggle("active")
      this.moving = true
      setTimeout(() => this.moving = false, 500)
    }
  }
}