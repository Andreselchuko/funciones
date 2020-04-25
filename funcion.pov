/*
 * En este ejemplo su usa las funciones para poder establecer numeros o valores que dependeran de una variable
 * Y esta variable como en sistemas fisicos es el tiempo o clock.
*/

#include "colors.inc" //Para incluir nombres de colores

//Radio de la esfera
#declare radio=1;

//Valor de la altura, dada una función  segun el tiempo.
//Lo que se puede notar aqui es la funcion seno con la variable clock
#declare valor=sin(2*pi*clock);

//Avance del eje x
#declare avance=pi*clock;

//Cámara
//Me permite colocar una cámara y aputarla a una localización específica.
camera{
    //Dónde se encuentra la cámara con coordenadas <x,y,z>
    location <pi/4,5.5,-5>
    //A donde apunta con coordenadas <x,y,z>
    look_at <pi/4,-2,3>
    }

//Fuente de luz
  light_source {
    <2, 10, -3>
    color White
    area_light <5, 0, 0>, <0, 0, 5>, 5, 5
    adaptive 1
    jitter
  }
  
//Esfera
sphere{
    //Localización y radio
    <avance,valor,0>, radio
    //Textura de la esfera
    texture{
	//Solo se usa pigmento    
        pigment{
	    //Color en RGB y transparencia del color
            color rgb<0,0,1>
        }
	//El acabado final y representa una propiedad de la reflexión de la luz
        finish{
            phong 1         
        }   
    }
}

//Plano z 
  plane {
    y, -1.5
    texture {
	    pigment{
		    color rgb<1,1,1>
	    }
      finish {
        diffuse 0.4
        ambient 0.2
        phong 1
        phong_size 100
        reflection 0.25
      }
    }
  }

//Plano y
  plane {
    x, -1
    texture {
	    pigment{
		    color rgb<1,1,1>
	    }
      finish {
        diffuse 0.4
        ambient 0.2
        phong 1
        phong_size 100
        reflection 0.25
      }
    }
  }
  
 //Plano x
  plane {
    z, 1
    texture {
	    pigment{
		    color rgb<1,1,1>
	    }
      finish {
        diffuse 0.4
        ambient 0.2
        phong 1
        phong_size 100
        reflection 0.25
      }
    }
  }