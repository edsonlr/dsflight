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
                <h3>{flight.title}</h3>
                <p>tipo de voo : {flight.tipo_voo}</p>
                <p>origem: {flight.origem}</p>
                <p>data partida : {flight.data_partida}</p>
                <p>destino: {flight.destino}</p>
                <p>data chegada : {flight.data_chegada}</p>
                <p>duracao : {flight.duracao} minutos</p>
                <FlightScore count={flight.count} score={flight.score} />
                <Link to={`/form/${flight.id}`}>
                    <div className="btn btn-primary dsflight-btn">Avaliar/Alterar</div>
                </Link>

            </div>
        </div>
    );
}

export default FlightCard;