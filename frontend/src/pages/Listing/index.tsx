import axios from "axios";
import { useEffect, useState } from "react";
import FlightCard from "components/FlightCard";
import Pagination from "components/Pagination";
import { BASE_URL } from "utils/requests";
import { FlightPage } from "types/flight";

function Listing() {

    const [pageNumber, setPageNumber] = useState(0);

    const [page, setPage] = useState<FlightPage>({
        content: [],
        last: true,
        totalPages: 0,
        totalElements: 0,
        size: 12,
        number: 0,
        first: true,
        numberOfElements: 0,
        empty: true
    });

    useEffect(() => {
        axios.get(`${BASE_URL}/flights?size=12&page=${pageNumber}&sort=id`)
            .then(response => {
                const data = response.data as FlightPage;
                setPage(data);
            });
    }, [pageNumber]);

   const handlePageChange = (newPageNumber : number) => {
       setPageNumber(newPageNumber);
   }

    return (

        <>

            <Pagination page={page} onChange={handlePageChange} />

            <div className="container" >
                <div className="row" >
                    {page.content.map(flight => (
                        <div key={flight.id} className="col-sm-6 col-lg-4 col-xl-3 mb-3" >
                            <FlightCard flight={flight} />
                        </div>
                    )
                    )}
                </div>
            </div>
        </>

    );

}

export default Listing;
