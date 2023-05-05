export class Vehiculo {
    id:string
    marca:string
    patente:string
    modelo:string
    año: string
    precio: string
    camioneta:boolean;
    carga:string

    constructor (id: string, marca: string, patente:string, modelo:string,año:string, precio:string, camioneta:boolean, carga:string){
        this.id=id
        this.marca=marca
        this.patente=patente
        this.modelo=modelo
        this.año=año
        this.precio=precio
        this.camioneta=camioneta
        this.carga=carga

    }

    toString():string{
        return `${this.marca}, ${this.modelo}, ${this.año}, ${this.patente}, ${this.precio},${this.camioneta},${this.carga} `
    }

}

