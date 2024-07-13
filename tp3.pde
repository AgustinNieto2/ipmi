//Alumno: Nieto Agustin 119101/6
//comision 3
//obra opArt
//
PImage obra; //variable carga imagen
int diam = 20; //variable de diametro de circulos
int espacio = 60; //variable de espacio entre un elemento y otro
float posX, posY; //posicion del mouse en el lienzo
color colorCirculos = color(255); // color circulos inicial blanco

void setup() {
  size(800, 400); //tamano del lienzo
  obra = loadImage("obra.jpg"); //carga imagen
}

void draw() {
  background(0);//fondo negro
  image(obra, 0, 0, 400, 400); // dibuja la imagen
  translate(415, 0); // pasa el sketch a la parte derecha

  for (int x = 0; x < height; x += espacio) {  //cambia el valor de X y lo reeplaza por el alto de la ventana 
    for (int y = 0; y < width; y += espacio) { //cambia el valor de Y y lo reemplaza por el ancho de la ventana 

      fill(150); // color rectangulos verticales y horizontales
      noStroke();
      rect(x, y, width, 10); // dibuja rectangulo horizontal
      rect(x, y, 10, height);// dibuja rectangulo vertical
      if (Click() == true) {
        colorCirculos = color(random(255), random(255), random(255));//color random de los circulos 
      } else if (Click() == false) {
        colorCirculos = 255;//si no se encuentra la funcion del click vuelve al blanco 
      }
      fill(colorCirculos); // utiliza el color actual para los circulos

      ellipse(x, y, 20, 20); // dibuja circulos
    }
  }
}

boolean Click(){
 if(mousePressed){
   return true;// funcion booleana devuelve un valor "Verdadero", se oprime el click del mouse
 }
 else{
 return false;}// funcion booleana devuelve un valor "Falso",no se presiona el mouse, o se deja de oprimir el click
 }
