import axios from "axios";
import { useEffect, useState } from "react";
import FlightCard from "components/FlightCard";
import Pagination from "components/Pagination";
import { BASE_URL } from "utils/requests";
import { FlightPage } from "types/flight";

function Listing() {

    const [pageNumber, setPageNumber] = useState(0);

    useEffect(() => {
        axios.get(`${BASE_URL}/flights?size=12&page=1`)
            .then(response => {
                const data = response.data as FlightPage;
                console.log(data);
                setPageNumber(data.number);
            });
    }, []);

    return (

        <>

            <p>{pageNumber}</p>
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
