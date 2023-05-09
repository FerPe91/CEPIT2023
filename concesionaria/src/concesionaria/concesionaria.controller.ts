import { Body, Controller, Get, Post, Delete, Param, ParseUUIDPipe } from '@nestjs/common';
import { ConcesionariaService } from './concesionaria.service';
import { CreateVehiculoDTO } from './dto/Vehiculo.dto';
import { Vehiculo } from './Concesionaria.entity';

@Controller('concesionaria')
export class ConcesionariaController {

    constructor(private concesionariaService: ConcesionariaService){}
    @Get()
    getVehiculos(){
        return this.concesionariaService.getAllVehiculos()
    }


    @Get(":id") // url/pistas/:id >> /pistas/a354c326-fc53-4079-9568-9de965eecb7a
    getVehiculoById(
    @Param("id", ParseUUIDPipe)
    id: string,): Vehiculo {
    return this.concesionariaService.getVehiculoById(id);
    }

     

    @Post()
    createVehiculo(@Body() newVehiculo: CreateVehiculoDTO){ //crear dto
        return this.concesionariaService.createVehiculo(newVehiculo.marca, newVehiculo.patente,
        newVehiculo.modelo, newVehiculo.año, newVehiculo.precio, newVehiculo.camioneta, newVehiculo.carga)
        
    }

    
    @Delete(':id') 
    deletePista(@Param('id')id:string){
        this.concesionariaService.deleteVehiculo(id)
    }
/* 
   @Patch(':id')
    updatePista(@Param('id')id:string,@Body() updateFields:UpdatePistaDTO){
        return this.pistaService.updatedPista(id, updateFields)
    }
 */

}
