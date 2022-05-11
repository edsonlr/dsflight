import FlightStars from "components/FlightStars";
import './styles.css'

function FlightScore() {

    const score = 3.5;
    const count = 13;

    return (
        <div className="dsflight-score-container">
            <p className="dsflight-score-value">{score > 0 ? score.toFixed(1) : '-'}</p>
            <FlightStars />
            <p className="dsflight-score-count">{count} avaliações</p>
        </div>


    );
}

export default FlightScore;