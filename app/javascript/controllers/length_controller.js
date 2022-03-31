import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    const blogContent = document.querySelectorAll('.trix-content')
    const card = document.querySelectorAll('.card')

    const readMoreBtn = document.createElement('button')
    const btnText = document.createTextNode('Read More')

    readMoreBtn.appendChild(btnText)

    console.log(blogContent[0])


    for (let i = 0; i < blogContent.length; i++) {
      const blogText = blogContent[i].children[0].childNodes[0].textContent



      const para = document.createElement('p')
      const node = document.createTextNode(blogText)

      para.appendChild(node)






      if (blogText.length > 80) {
        const newText = blogContent[i].children[0].childNodes[0]
        newText.textContent = para.textContent.slice(0, 140)

      }

    }

  }
}
