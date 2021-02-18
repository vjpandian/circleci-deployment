import React from 'react'

const TestButton = () => {
 const [counter, setCounter] = React.useState(0)
  
 return (
  <>
    <button data-testid="button_container" onClick={() => setCounter(counter + 1)}> Up</button>
 </>
    )
  }
  
  export default TestButton