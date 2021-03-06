import axios, { AxiosRequestConfig } from 'axios';
import { useEffect, useState } from 'react';
import { Link, useNavigate } from 'react-router-dom';
import { Flight } from 'types/flight';
import { BASE_URL } from 'utils/requests';
import { validateEmail } from 'utils/validate'; 
import './styles.css';


type Props ={
    flightId : string;
}


function FormCard( { flightId } : Props) {

    const navigate = useNavigate();

    const [flight, setFlight] = useState<Flight>();

    useEffect(() => {
        axios.get(`${BASE_URL}/flights/${flightId}`)
        .then(response => {
            setFlight(response.data);
        })
    }, [flightId]);

    const handleSubmit = (event: React.FormEvent<HTMLFormElement>) => {
        
        event.preventDefault(); 

        
        const email = (event.target as any).email.value;
        const score = (event.target as any).score.value;
        const tipo_voo = (event.target as any).tipo_voo.value;
        const duracao = (event.target as any).duracao.value;

        if (!validateEmail(email)) {
           return 
        }

        const config: AxiosRequestConfig = {
            baseURL: BASE_URL,
            method: 'PUT',
            url: '/scores',
            data: {
                email: email,
                flightId: flightId,
                score: score,
                tipo_voo: tipo_voo,
                duracao: duracao
            }
        }

        axios(config).then(response => {
            console.log(response.data);
            navigate("/");
        });
        
    }
  
    return (
        <div className="dsflight-form-container">
            <img className="dsflight-flight-card-image" src={flight?.image} alt={flight?.title} />
            <div className="dsflight-card-bottom-container">
                <h3>{flight?.title}</h3>
                <p>tipo de voo : {flight?.tipo_voo}</p>
                <p>origem: {flight?.origem}</p>
                <p>data partida : {flight?.data_partida}</p>
                <p>destino: {flight?.destino}</p>
                <p>data chegada : {flight?.data_chegada}</p>
                <p>duracao : {flight?.duracao} minutos</p>
                <form className="dsflight-form" onSubmit={handleSubmit}>  
                    <div className="form-group dsflight-form-group">
                        <label htmlFor="email">Informe seu email</label>
                        <input type="email" className="form-control" id="email" />
                    </div>
 
                    <div className="form-group dsflight-form-group">
                        <label htmlFor="score">Informe sua avalia????o</label>
                        <select className="form-control" id="score">
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                        </select>
                    </div>
                    <h3> Preencha abaixo caso deseje alterar algum dado do voo</h3>

                    <div className="form-group dsflight-form-group">
                        <label htmlFor="tipo_voo">Informe o tipo de voo</label>
                        <input type="tipo_voo" className="form-control" id="tipo_voo" defaultValue={flight?.tipo_voo} />
                    </div>
                    <div className="form-group dsflight-form-group">
                        <label htmlFor="duracao">Informe a duracao</label>
                        <input type="duracao" className="form-control" id="duracao" defaultValue={flight?.duracao} />
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

export default FormCard;