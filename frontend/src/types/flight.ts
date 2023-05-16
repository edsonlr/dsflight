export type Flight = {
    id: number;
    title: string;
    score: number;
    count: number;
    image: string;
    datapartida: string
    datachegada: string
    aeroportoorigem: string
    aeroportodestino: string
    cidadeorigem: string
    cidadedestino: string
    tipovoo: string
    duracao: number;
    paisorigem: string
    paisdestino: string
    tipoaviao: string
    matriculaaviao: string
    companhiaaerea: string
    escalas:string
    observação: string


}

export type FlightPage = {
    content: Flight[];
    last: boolean;
    totalPages: number;
    totalElements: number;
    size: number;
    number: number;
    first: boolean;
    numberOfElements: number;
    empty: boolean;
}