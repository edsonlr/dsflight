import FlightScore from "components/FlightScore";
import { Link } from "react-router-dom";

function FlightCard() {

    const flight = {
        id: 1,
        image: "http://www.geocities.ws/rumboalsud/B737/13-cx-vhm.jpg",
        title: " Pluna - Boeing 737 - CX-BHM",
        count: 2,
        score: 4.5,
        data_chegada: "01/07/1971",
        data_partida: "01/07/1971",
        destino: "Montevideo - Carrasco",
        origem: "São Paulo - Congonhas",
        tipo_voo: "inter", 
        duracao: 160,

    };


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
                <FlightScore />
                <Link to={`/form/${flight.id}`}>
                    <div className="btn btn-primary dsflight-btn">Avaliar</div>
                </Link>

            </div>
        </div>
    );
}

export default FlightCard;