import { Controller } from '@hotwired/stimulus'
import { Modal } from "bootstrap"
window.modal = Modal

export default class extends Controller {
  static targets = [ 'link', 'noClothModal' ]

  connect() {
    console.log('Hello from mannequin-controller.js')
  }
  scroll(e){
    e.preventDefault()
    const clothCard = document.getElementById(e.currentTarget.dataset.href)
    if(clothCard) {
      clothCard.scrollIntoView()
    } else {
      const noClothBsModal = new Modal(this.noClothModalTarget)
      noClothBsModal.show()
    }
  }
}