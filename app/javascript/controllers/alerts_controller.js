import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    const noticeAlert = document.getElementById('notice-alert')
    const noticeBtn = document.getElementById('notice-btn')
    noticeBtn.addEventListener('click', () => {
      noticeAlert.classList.add('hidden')
    })
  }
}