import React from "react"
import PropTypes from "prop-types"
import BaseCard from "./BaseCard"
import HeroCard from "./HeroCard"

class Lane extends React.Component {
  render () {
    return (
      <React.Fragment>
      <div className="container Lane">
        <div className="row">
          <div className="col col-sm-1">
          </div>
          <div className="col col col-sm-8">
            <HeroCard />
          </div>
          <div className="col col-sm-1">
          </div>
        </div>
        <div className="row">
          <div className="col col-sm-1">
          </div>
          <div className="col col col-sm-8">
            <HeroCard />
          </div>
          <div className="col col-sm-1">
          </div>
        </div>
        <div className="row">
          <div className="col col-sm-1">
          </div>
          <div className="col col col-sm-8">
            <HeroCard />
          </div>
          <div className="col col-sm-1">
          </div>
        </div>
        <div className="row">
          <div className="col">
            <BaseCard />
          </div>
        </div>
      </div>
      </React.Fragment>
    );
  }
}

export default Lane
