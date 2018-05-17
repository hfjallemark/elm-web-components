import { LitElement, html } from "@polymer/lit-element"

class MyLitElement extends LitElement {
  static get properties() {
    return { message: String }
  }

  _render({ message }) {
    return html`
      <h2>MyLitElement</h2>
      <p>Message is '${message}'</p>
    `
  }
}

customElements.define("my-lit-element", MyLitElement)
