import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    const blogContent = document.querySelectorAll('.trix-content')

    const imgEl = document.getElementsByTagName('img')

    for (let i = 0; i < blogContent.length; i++) {
      const blogText = blogContent[i].children[0].childNodes[0].textContent



      const para = document.createElement('p')
      const node = document.createTextNode(blogText)

      para.appendChild(node)

      const readMoreBtn = document.createElement('button')
      const readMoreText = document.createTextNode('...Read more')

      readMoreBtn.appendChild(readMoreText)




      if (blogText.length > 80) {
        const newText = blogContent[i].children[0].childNodes[0]
        newText.textContent = para.textContent.slice(0, 140)
        const cardText = document.querySelectorAll('.card-text')
        cardText.insertBefore(readMoreBtn, blogContent[i])



      }

    }

  }
}
