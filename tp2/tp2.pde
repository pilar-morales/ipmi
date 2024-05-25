//TP2
//COMISIÓN 5
//PILAR MORALES   120348/5


PFont texto1;

PImage fondo1,fondo2,fondo3,fondo4;

float pantalla,pantalla2, tiempo,suma,diametro,animacion;

boolean ultimaPantalla;

color botonReinicio;

int opacidad,limiteDeAnimacion;

void setup(){ 
  size(640,480);
  pantalla=0;
  pantalla2=1;
  tiempo=0;
  suma = 0.7;
  diametro=200;
  ultimaPantalla= false;
  botonReinicio= color(255,0,0);
  texto1= loadFont("Alasdesangre2.vlw");
  fondo1=loadImage("pantalla1.png");
  fondo2=loadImage("pantalla2.png");
  fondo3=loadImage("pantalla3.png");
  fondo4=loadImage("pantalla4.png");
  animacion=10;
  opacidad=0;
  limiteDeAnimacion=300;
}
void draw(){
  if(pantalla==0){
    push();
image (fondo1,0,0);
textFont(texto1);
textSize(25);
    fill(214,154,80);
text("Alas de sangre es\nel primer libro de una\nsaga de fantasia\nescrita por\nRebecca Yarros.\nBasada en un mundo de \ndragones y grifos.\nEste libro se enfoca\nen el colegio de\nGuerra Basgiath\nde Navarre", 350,80);
pop();
}
  else if (pantalla==1){
    push();
    animacion++;
    image(fondo2,0,0);
    if(animacion>500){
      animacion=0;
      pantalla2++;
      if(pantalla2>4){
        pantalla2=1;
      }
    }
   text("En Basgiath podemos encontrar cuatro cuadrantes:\nLos jinetes de dragones.\nLos escribas.\nLos curanderos.\nInfanteria.",animacion,200);
    pop();
  }
  else if (pantalla==2){
    push();
    animacion++;
    image(fondo3,0,0);
     if(animacion>400){
      animacion=10;
      pantalla2++;
      if(pantalla2>4){
        pantalla2=1;
      }
    }
    if(pantalla2==2){
      fill(255);
      text("Este libro nos cuenta la historia de Violet,\nla cual desea entrar al cuadrante de escribas\npero su madre la obliga a ir\nal cuadrante de jinetes.\nDonde tendra que pasar pruebas y \nlograr que un dragón la elija para vivir y\nlograr ser jinete.",100,animacion);
    }
    pop();
  }
 
  if(ultimaPantalla==true){
    push();
    fill(botonReinicio);
    circle(width/2,height/2, diametro);
    fill(255);
    text("REINICIAR", 270,250);
    pop();
  }
  if(ultimaPantalla==false){
    tiempo=tiempo+suma;
  }
  if(tiempo>=300 && pantalla !=3){
    tiempo=0;
    if (pantalla != 2){
     pantalla++;
   } else if (pantalla==2){
     ultimaPantalla=true;
   }
  }
  }
 void mouseClicked(){
   if (dist(width/2,height/2,mouseX,mouseY) < diametro/2){
     pantalla=0;
     tiempo=0;
     suma= 0.7;
     ultimaPantalla=false;
   }
 }
