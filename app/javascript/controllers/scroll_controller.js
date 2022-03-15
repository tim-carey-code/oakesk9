import { Controller } from "@hotwired/stimulus"



export default class extends Controller {

  connect() {

    window.onscroll = () => {
      scrollToTheTop()
    }

    const scrollToTheTop = () => {
      // const bodyTop = document.body.scrollTop = 0;
      // const elementTop = document.documentElement.scrollTop = 0;
      let myButton = document.getElementById("myBtn")

      const topFunction = () => {
        document.documentElement.scrollTop = 0;
        document.body.scrollTop = 0;
      }

      myButton.addEventListener("click", topFunction)

      if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
        myButton.style.display = "block"

      } else {
        myButton.style.display = "none"
      }

    }

    let contactBtn = document.getElementById("contact-btn")
    let contactSpan = document.getElementById("contact-span")

    const contactScroll = () => {
      window.scrollTo({
        top: window.innerWidth <= 576 ? 1380 : 1132,
        behavior: 'smooth'

      })
    }

    contactBtn.addEventListener("click", contactScroll)
    contactSpan.addEventListener("click", contactScroll)


  }
}
