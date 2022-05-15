import FlightStars from "components/FlightStars";
import './styles.css'

type Props = {
    score: number;
    count: number;
}

function FlightScore({ score, count } : Props) {

   
    return (
        <div className="dsflight-score-container">
            <p className="dsflight-score-value">{score > 0 ? score.toFixed(1) : '-'}</p>
            <FlightStars score={score} />
            <p className="dsflight-score-count">{count} avaliações</p>
        </div>


    );
}

export default FlightScore;