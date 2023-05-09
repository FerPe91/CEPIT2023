import { Injectable, NotFoundException } from '@nestjs/common';
import { Vehiculo } from './Concesionaria.entity';
import { v4 } from 'uuid';
import { timeout } from 'rxjs';

@Injectable()
export class ConcesionariaService {
    private concesionaria : Vehiculo[] = [{
        id:"1",
        marca:"Fiat",
        patente:"PRT-897",
        modelo:"Palio",
        año:"2008",
        precio:"998878",
        camioneta:false,
        carga:""
    },]
    
    getAllVehiculos(){
        return this.concesionaria
    }


    getVehiculoById(id: string): Vehiculo {
        const vehiculo = this.concesionaria.find((vehiculo) => vehiculo.id === id);
        if (!vehiculo) {
          // devolver una exception
          throw new NotFoundException();
        }
        return vehiculo;
    }




    createVehiculo(marca: string, patente:string, modelo:string,año:string, precio:string, camioneta:boolean, carga:string){
        
        const vehiculo={
            id:v4(),
            marca,
            patente,
            modelo,
            año,
            precio,
            camioneta,
            carga
        }
        this.concesionaria.push(vehiculo)
        console.log(this.concesionaria.length);        
        return vehiculo
    }


    deleteVehiculo(id:string){
        this.concesionaria = this.concesionaria.filter(vehiculo=> vehiculo.id !== id) 
    }

}

