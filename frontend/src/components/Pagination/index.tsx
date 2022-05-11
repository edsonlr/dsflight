import { ReactComponent as Arrow} from 'assets/img/arrow.svg'
import './styles.css'

function Pagination() {

    return (
        <div className="dsflight-pagination-container">
            <div className="dsflight-pagination-box">
                <button className="dsflight-pagination-button" disabled={true} >
                    <Arrow />
                </button>
                <p>{`${1} de ${3}`}</p>
                <button className="dsflight-pagination-button" disabled={false} >
                    <Arrow className="dsflight-flip-horizontal" />
                </button>
            </div>
        </div>

    );



}

export default Pagination;