'use strict';
const e = React.createElement;
class Button extends React.Component {
  constructor(props) {
    super(props);
    this.state = { clicked: false };
  }
const domContainer = document.querySelector('#button_container');
ReactDOM.render(e(Button), domContainer);
