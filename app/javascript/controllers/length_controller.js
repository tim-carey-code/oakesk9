import { Controller } from '@hotwired/stimulus'

export default class extends Controller {
  connect() {
    const blogContent = document.querySelectorAll('.trix-content')
    const readMoreBtn = document.createElement('button')
    const btnText = document.createTextNode('Read More')
    const readMoreBtn1 = document.createElement('button')
    const btnText1 = document.createTextNode('Read more')
    readMoreBtn.appendChild(btnText)
    readMoreBtn1.appendChild(btnText1)
    readMoreBtn.classList.add('btn', 'btn-primary')

    const images = document.getElementsByTagName('img')

    for (let i = 0; i < blogContent.length; i++) {
      const blogText = blogContent[i].children[0].childNodes[0].textContent

      const para = document.createElement('p')
      const node = document.createTextNode(blogText)

      para.appendChild(node)

      if (blogText.length > 80) {
        const newText = blogContent[i].children[0].childNodes[0]
        newText.textContent = para.textContent.slice(0, 140) + '...'
      } else if (blogText > 80 && images) {
        const newText = blogContent[i].children[0].childNodes[0]
        newText.textContent = para.textContent.slice(0, 140) + '...'
      }
    }
  }
}
