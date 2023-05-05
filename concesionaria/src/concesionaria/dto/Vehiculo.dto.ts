import {IsString, IsBoolean } from 'class-validator';

export class CreateVehiculoDTO{ 
    @IsString()
    id:string

    @IsString()
    marca:string
    
    @IsString()
    patente:string

    @IsString()
    modelo:string

    @IsString()
    año: string
    
    @IsString()
    precio: string

    @IsBoolean()
    camioneta:boolean

    @IsString()
    carga:string
}