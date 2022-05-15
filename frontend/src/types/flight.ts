export type Flight = {
    id: number;
    title: string;
    score: number;
    count: number;
    image: string;
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