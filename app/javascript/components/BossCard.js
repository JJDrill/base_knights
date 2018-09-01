import React from "react"
import PropTypes from "prop-types"

class BossCard extends React.Component {
  render () {
    return (
      <React.Fragment>
      <div className="BossCard">
        <div className="BossCardName">
          {this.props.name}
        </div>
        <div className="BossCardDescription">
          {this.props.description}
        </div>
      </div>
      </React.Fragment>
    );
  }
}

BossCard.propTypes = {
  name: PropTypes.string,
  description: PropTypes.string
};

export default BossCard
