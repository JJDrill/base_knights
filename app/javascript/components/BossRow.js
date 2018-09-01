import React from "react"
import BossCard from "./BossCard"

class BossRow extends React.Component {
  render () {
    return (
      <React.Fragment>
      <div className="row BossRow">
        <div className="col-md-5 col-md-offset-1 ActiveBoss">
          <BossCard />
        </div>
        <div className="col-md-5 col-md-offset-1 DiscardedBosses">
          <BossCard />
        </div>
      </div>
      </React.Fragment>
    );
  }
}

export default BossRow
