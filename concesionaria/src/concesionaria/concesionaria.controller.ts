import { Body, Controller, Get, Post, Delete, Param } from '@nestjs/common';
import { ConcesionariaService } from './concesionaria.service';
import { CreateVehiculoDTO } from './dto/Vehiculo.dto';

@Controller('concesionaria')

export class ConcesionariaController {

    constructor(private concesionariaService: ConcesionariaService){}
    @Get()
    getVehiculos(){
        return this.concesionariaService.getAllVehiculos()
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
