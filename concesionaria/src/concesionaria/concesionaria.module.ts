import { Module } from '@nestjs/common';
import { ConcesionariaController } from './concesionaria.controller';
import { ConcesionariaService } from './concesionaria.service';

@Module({
    controllers: [ConcesionariaController],
    providers: [ConcesionariaService]
  })
export class ConcesionariaModule {}
