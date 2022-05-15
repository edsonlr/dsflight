import axios from "axios";
import FlightCard from "components/FlightCard";
import Pagination from "components/Pagination";
import { BASE_URL } from "utils/requests";

function Listing() {

    // FORMA ERRADA

    axios.get(`${BASE_URL}/flights?size=12&page=0`)
    .then(response => {
        console.log(response.data);
    });


    return (

        <>
            <Pagination />

            <div className="container" >
                <div className="row" >
                    <div className="col-sm-6 col-lg-4 col-xl-3 mb-3" >
                        <FlightCard />
                    </div>
                    <div className="col-sm-6 col-lg-4 col-xl-3 mb-3" >
                        <FlightCard />
                    </div>
                    <div className="col-sm-6 col-lg-4 col-xl-3 mb-3" >
                        <FlightCard />
                    </div>
                    <div className="col-sm-6 col-lg-4 col-xl-3 mb-3" >
                        <FlightCard />
                    </div>
                    <div className="col-sm-6 col-lg-4 col-xl-3 mb-3" >
                        <FlightCard />
                    </div>
                </div>
            </div>
        </>

    );

}

export default Listing;
