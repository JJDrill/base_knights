import React from "react"
import PropTypes from "prop-types"
import Lane from "./Lane"

class GameBoard extends React.Component {
  render () {
    return (
      <div className="container">
        <div className="row GameBoard">
          <div className="col-md-3">
          <Lane />
          </div>
          <div className="col-md-3">
          <Lane />
          </div>
          <div className="col-md-3">
          <Lane />
          </div>
        </div>
      </div>
    );
  }
}

export default GameBoard
