import React from "react"
import PropTypes from "prop-types"

class HeroCard extends React.Component {
  render () {
    return (
      <React.Fragment>
      <div className="HeroCard">
        <div className="HeroCardName">
          {this.props.name}
        </div>
        <div className="HeroCardDescription">
          {this.props.description}
        </div>
      </div>
      </React.Fragment>
    );
  }
}

HeroCard.propTypes = {
  name: PropTypes.string,
  description: PropTypes.string
};

export default HeroCard
