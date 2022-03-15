import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    const currentLocation = window.location.pathname
    const pageNumber = currentLocation.split('/')
    const El = document.querySelectorAll(".nav-link-custom")

    console.log(El)

    if (currentLocation === "/blogs" || currentLocation === `/blogs/${pageNumber[2]}` || currentLocation === `/blogs/${pageNumber[2]}/edit`) {
      El[1].classList.add("active-custom")
      El[0].classList.remove("active-custom")
    } else if (currentLocation === "/") {
      El[0].classList.add("active-custom")
      El[1].classList.remove("active-custom")
    } else if (currentLocation === '/contact') {
      El[2].classList.add("active-custom")
      El[0].classList.remove("active-custom")
    } else {
      El[0].classList.remove("active-custom")
      El[1].classList.remove("active-custom")
      El[2].classList.remove("active-custom")
      El[3].classList.add("active-custom")
    }

  }
}
