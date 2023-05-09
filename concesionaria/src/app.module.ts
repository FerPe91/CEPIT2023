import { Module } from '@nestjs/common';
import{ ServeStaticModule } from '@nestjs/serve-static';
import { join } from 'path';
import { ConcesionariaController } from './concesionaria/concesionaria.controller';
import { ConcesionariaService } from './concesionaria/concesionaria.service';
import { ConcesionariaModule } from './concesionaria/concesionaria.module';

@Module({
  imports: [ConcesionariaModule,ServeStaticModule.forRoot({ rootPath: join(__dirname, '..','client')})],
  controllers: [ConcesionariaController],
  providers: [ConcesionariaService],
})
export class AppModule {}
