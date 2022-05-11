import FlightScore from "components/FlightScore";

function FlightCard() {

    const flight = {
        id: 1,
        image: " http://www.geocities.ws/rumboalsud/B737/13-cx-vhm.jpg",
        title: " Pluna – 1970 - CX-BHM",
        count: 2,
        score: 4.5
    };


    return (
        <div>
            <img className="dsflight-flight-card-image" src={flight.image} alt={flight.title} />
            <div className="dsflight-card-bottom-container">
                <h3>{flight.title}</h3>
                <FlightScore />
                <div className="btn btn-primary dsflight-btn">Avaliar</div>
            </div>
        </div>
    );
}

export default FlightCard;