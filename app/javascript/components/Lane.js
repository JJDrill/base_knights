import React from "react"
import PropTypes from "prop-types"
import BaseCard from "./BaseCard"
import HeroCard from "./HeroCard"

class Lane extends React.Component {
  render () {
    return (
      <div className="Lane">
        <HeroCard />
        <HeroCard />
        <HeroCard />
        <BaseCard />
      </div>
    );
  }
}

export default Lane
