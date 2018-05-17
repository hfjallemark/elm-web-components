class MyElement extends HTMLElement {
  static get observedAttributes() {
    return ["message"]
  }

  constructor() {
    super()
    this.attachShadow({ mode: "open" })
  }

  attributeChangedCallback() {
    this.render()
  }

  connectedCallback() {
    this.render()
  }

  render() {
    this.shadowRoot.innerHTML = `
      <h2>MyElement</h2>
      <p>Message is '${this.getAttribute("message")}'</p>
    `
  }
}

customElements.define("my-element", MyElement)
