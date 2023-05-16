import FlightScore from "components/FlightScore";
import { Link } from "react-router-dom";
import { Flight } from "types/flight";


type Props = {
    flight: Flight;
}



function FlightCard( { flight } : Props) {

    
    return (
        <div>
            <img className="dsflight-flight-card-image" src={flight.image} alt={flight.title} />
            <div className="dsflight-card-bottom-container">
                <h3>{flight.companhiaaerea}-{flight.tipoaviao}-{flight.matriculaaviao}</h3>
                <p><b>tipo de voo :</b> {flight.tipovoo}</p>
                <p><b>origem:</b> {flight.paisorigem}-{flight.cidadeorigem}-{flight.aeroportoorigem}</p>
                <p><b>data partida :</b> {flight.datapartida}</p>
                <p><b>destino:</b> {flight.paisdestino}-{flight.cidadedestino}-{flight.aeroportodestino}</p>
                <p><b>data chegada :</b> {flight.datachegada}</p>
                <p><b>duracao :</b> {flight.duracao} minutos</p>
                <FlightScore count={flight.count} score={flight.score} />
                <Link to={`/form/${flight.id}`}>
                    <div className="btn btn-primary dsflight-btn">Avaliar/Alterar</div>
                </Link>

            </div>
        </div>
    );
}

export default FlightCard;