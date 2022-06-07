import { Controller } from '@hotwired/stimulus'
import Swiper, { EffectCards } from 'swiper';
import 'swiper/swiper-bundle.min.css'
import 'swiper/swiper.min.css'

export default class extends Controller {
  connect() {
    new Swiper(this.element, {
      modules: [EffectCards],
      effect: "cards",
      grabCursor: true,
    });
  }
}