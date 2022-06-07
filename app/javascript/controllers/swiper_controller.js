import { Controller } from '@hotwired/stimulus'
import Swiper, { EffectCards, Navigation, Thumbs, FreeMode } from 'swiper';
import 'swiper/swiper-bundle.min.css'
import 'swiper/swiper.min.css'

export default class extends Controller {
  static targets = [ 'preview', 'slider' ]

  connect() {
    var preview = new Swiper(this.previewTarget, {
      modules: [FreeMode],
      spaceBetween: 10,
      slidesPerView: 4,
      freeMode: true,
      watchSlidesProgress: true
    })

    new Swiper(this.sliderTarget, {
      modules: [EffectCards, Thumbs],
      effect: "cards",
      grabCursor: true,
      spaceBetween: 10,
      thumbs: {
        swiper: preview,
      },
    })
  }
}