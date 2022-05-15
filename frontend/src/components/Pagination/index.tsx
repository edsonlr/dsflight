import { ReactComponent as Arrow} from 'assets/img/arrow.svg'
import { FlightPage } from 'types/flight';
import './styles.css'

type Props ={
    page: FlightPage;
    onChange: Function;
}

function Pagination({ page, onChange } : Props) {

    return (
        <div className="dsflight-pagination-container">
            <div className="dsflight-pagination-box">
                <button className="dsflight-pagination-button"
                 disabled={page.first} onClick={() => onChange(page.number - 1)} >
                    <Arrow />
                </button>
                <p>{`${page.number + 1} de ${page.totalPages}`}</p>
                <button className="dsflight-pagination-button" 
                disabled={page.last} onClick={() => onChange(page.number  + 1)} >
                    <Arrow className="dsflight-flip-horizontal" />
                </button>
            </div>
        </div>

    );



}

export default Pagination;