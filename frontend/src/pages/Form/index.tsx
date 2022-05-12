import { Link } from 'react-router-dom';
import './styles.css';

function Form() {

    const flight = {
        id: 1,
        image: " http://www.geocities.ws/rumboalsud/B737/13-cx-vhm.jpg",
        title: " Pluna – 1970 - CX-BHM",
        count: 2,
        score: 4.5
    };


    return (
        <div className="dsflight-form-container">
            <img className="dsflight-flight-card-image" src={flight.image} alt={flight.title} />
            <div className="dsflight-card-bottom-container">
                <h3>{flight.title}</h3>
                <form className="dsflight-form">
                    <div className="form-group dsflight-form-group">
                        <label htmlFor="email">Informe seu email</label>
                        <input type="email" className="form-control" id="email" />
                    </div>
                    <div className="form-group dsflight-form-group">
                        <label htmlFor="score">Informe sua avaliação</label>
                        <select className="form-control" id="score">
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                        </select>
                    </div>
                    <div className="dsflight-form-btn-container">
                        <button type="submit" className="btn btn-primary dsflight-btn">Salvar</button>
                    </div>
                </form >
                <Link to="/">
                    <button className="btn btn-primary dsflight-btn mt-3">Cancelar</button>
                </Link>

            </div >
        </div >

    );

}

export default Form;