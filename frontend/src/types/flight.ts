export type Flight = {
    id: number;
    title: string;
    score: number;
    count: number;
    image: string;
    data_chegada: string;
    data_partida: string;
    destino: string;
    origem: string;
    tipo_voo: string;
    duracao: number;
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