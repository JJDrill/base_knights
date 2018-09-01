import React from "react"
import PropTypes from "prop-types"
import Lane from "./Lane"
import BossRow from "./BossRow"

class GameBoard extends React.Component {
  render () {
    return (
      <React.Fragment>
      <div className="container GameBoard">
        <div className="row">
          {/* Left Side of Board */}
          <div className="row col-md-8 GameBoardLeft">
            <div className="row">
              <div className="col-md-4">
                <Lane />
              </div>
              <div className="col-md-4">
                <Lane />
              </div>
              <div className="col-md-4">
                <Lane />
              </div>
            </div>
          </div>
          {/* Right Side of Board */}
          <div className="row col-md-4 GameBoardRight">
            <BossRow />
          </div>
        </div>
      </div>
      </React.Fragment>
    );
  }
}

export default GameBoard
