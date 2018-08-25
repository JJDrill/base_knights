import React from "react"
import PropTypes from "prop-types"
class BaseCard extends React.Component {
  render () {
    return (
      <React.Fragment>
      <div className="BaseCard">
        <div className="BaseCardName">
          {this.props.name}
        </div>
        <div className="BaseCardDescription">
          {this.props.description}
        </div>
      </div>
      </React.Fragment>
    );
  }
}

BaseCard.propTypes = {
  name: PropTypes.string,
  description: PropTypes.string
};

export default BaseCard
