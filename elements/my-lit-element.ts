import { html, LitElement } from "@polymer/lit-element"

type Props = {
  message: string
}

class MyLitElement extends LitElement {
  static get properties() {
    return { message: String }
  }

  _render({ message }: Props) {
    return html`
      <h2>MyLitElement</h2>
      <p>Message is '${message}'</p>
    `
  }
}

customElements.define("my-lit-element", MyLitElement)
