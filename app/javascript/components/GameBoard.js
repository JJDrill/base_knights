import React from "react"
import PropTypes from "prop-types"
import Lane from "./Lane"

class GameBoard extends React.Component {
  render () {
    return (
      <div className="row GameBoard">
        <Lane />
        <Lane />
        <Lane />
      </div>
    );
  }
}

export default GameBoard
