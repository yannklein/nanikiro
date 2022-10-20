import { Controller } from '@hotwired/stimulus'

export default class extends Controller {
  static targets = [ 'link' ]

  connect() {
    console.log('Hello from mannequin-controller.js')
    // console.log(this.testTarget)
  }
  scroll(e){
    e.preventDefault()
    console.log(e.currentTarget);
    document.getElementById(e.currentTarget.dataset.href).scrollIntoView()
  }
}