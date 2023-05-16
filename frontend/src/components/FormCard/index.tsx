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
        const tipovoo = (event.target as any).tipovoo.value;
        const duracao = (event.target as any).duracao.value;
        const companhiaaerea = (event.target as any).companhiaaerea.value;
        const datapartida = (event.target as any).datapartida.value;
        const datachegada = (event.target as any).datachegada.value;

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
                tipovoo: tipovoo,
                duracao: duracao,
                datapartida: datapartida,
                datachegada: datachegada,
                companhiaaerea: companhiaaerea
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
                <h3>{flight?.companhiaaerea}-{flight?.tipoaviao}-{flight?.matriculaaviao}</h3>
                <p><b>tipo de voo :</b> {flight?.tipovoo}</p>
                <p><b>origem:</b> {flight?.paisorigem}-{flight?.cidadeorigem}-{flight?.aeroportoorigem}  </p>
                <p><b>data partida :</b> {flight?.datapartida}</p>
                <p><b>destino:</b> {flight?.paisdestino}-{flight?.cidadedestino}-{flight?.aeroportodestino}</p>
                <p><b>data chegada:</b> {flight?.datachegada}</p>
                <p><b>duracao:</b> {flight?.duracao} <b>minutos</b></p>
                <form className="dsflight-form" onSubmit={handleSubmit}>  
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
                    <h3> Preencha abaixo caso deseje alterar algum dado do voo</h3>

                    

{/* image, 
aeroportoorigem, 
aeroportodestino, 
cidadeorigem, 
cidadedestino, 
paisorigem, 
paisdestino, 
tipoaviao, 
matriculaaviao, 
escalas,
observacao

    */}

                    <div className="form-group dsflight-form-group">
                        <label htmlFor="companhiaaerea">Informe a Companhia Aérea</label>
                        <input type="companhiaaerea" className="form-control" id="companhiaaerea" defaultValue={flight?.companhiaaerea} />
                    </div>
                    <div className="form-group dsflight-form-group">
                        <label htmlFor="datapartida">Informe a Data da Partida</label>
                        <input type="datapartida" className="form-control" id="datapartida" defaultValue={flight?.datapartida} />
                    </div>
                    <div className="form-group dsflight-form-group">
                        <label htmlFor="datachegada">Informe a Data da Chegada</label>
                        <input type="datachegada" className="form-control" id="datachegada" defaultValue={flight?.datachegada} />
                    </div>
                    <div className="form-group dsflight-form-group">
                        <label htmlFor="tipovoo">Informe o tipo de voo</label>
                        <input type="tipovoo" className="form-control" id="tipovoo" defaultValue={flight?.tipovoo} />
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