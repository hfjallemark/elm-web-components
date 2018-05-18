import { html, LitElement } from "@polymer/lit-element"

type Props = {
  message: string
}

class MyLitElement extends LitElement {
  static get properties() {
    return { message: String }
  }

  handleChange = (e: Event) => {
    this.dispatchEvent(
      new CustomEvent("test", { detail: (e.target as HTMLInputElement).value }),
    )
  }

  _render({ message }: Props) {
    return html`
      <h2>MyLitElement</h2>
      <p>Message is '${message}'</p>
      <input onchange=${this.handleChange} value="${message}" />
    `
  }
}

customElements.define("my-lit-element", MyLitElement)
