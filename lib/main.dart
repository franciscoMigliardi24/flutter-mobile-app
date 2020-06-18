import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  //runApp(MyApp());
  runApp(MaterialApp(
    home: Home()
  ));
}


class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final datosCuriosos = ["Un gato tiene 32 musculos en cada oreja",
      "Un cocodrilo no puede sacar la lengua",
      "El tiburon es el unico pez que puede parpadear con ambos ojos al mismo tiempo",
      "Las jirafas no hacen ruido, tienen las cuerdas bucales atrofiadas por la longitud del cuello",
      "Las almendras y los duraznos pertenecen a la misma familia",
      "El ojo de una avestruz es mas grande que su cerebro",
      "Es imposible tocar un reflejo que no sea el propio",
      "Para muchos, la vida es un largo recorrido entre 2 hospitales..",
      "La caligrafia de cada uno puede ser la tonada de tu mano",
      "Si a cualquier figura geometrica le seguis añadiendo lados, eventualmente se transforma en circulo",
      "Una abeja tiene 16 cromosomas",
      "Todos los que hacen ejercico es porque aman u odian su cuerpo",
      "Si te tiras de un puente gritando ´PARKOUR´ es tan solo una acrobacia que salio mal",
      "No hay malas reseñas de los paracaidas",
      "Los molinos de viento en Irlanda giran en sentido contrario al resto del mundo",
      "La letra ´J´ fue la ultima en ser agragada al abecedario",
      "La carta ´K´ de corazones es la unica que no tiene bigote",
      "Hasta el año 1800 aproximadamente, los zapatos izquierdo y derecho eran iguales",
      "La piel de un tigre tambien es rallada. Debajo de su pelo",
      "La mayor parte del polvo de una casa es piel muerta",
      "El beso frances en Francia se llama beso ingles",
      "Si las gallinas se revelaran contra los humanos, cada humano tendria que enfrentar a 3 gallinas",
      "La poblacion total de hormigas en el mundo pesa mas que la poblacion humana. 1 millon de homrigas por cada habitante",
      "Hay mas de 60 casos en el mundo de personas que se despiertan de un coma hablando otro idioma",
      "La Arigiria es una enfermedad producida por una larga exposicion a la Plata, y entre sus sintomas se encuentra la colorcion azul de la piel",
      "La Hipertimesia es un trastorno en el cual no podes borrar ni olvidar tus recuerdos",
      "Cualquier objeto puede ser un Boomerang si lo tiras para arriba",
      "Usas el celular todos los dias pero nunca en un sueño",
      "El numero de personas mayores a vos constantemente decrece y nunca aumenta",
      "Hay solo 2 dias de tu vida que no son de 24hs, el dia que naces y el dia que moris",
      "La gravedad esta constantemente tratando de bajarte los pantalones",
      "El indice de masa corporal de Yoda (Star Wars) es de 100, el de un humano promedio es de 30, por ende Yoda seria obeso",
      "Si Buzz Lightyear no se creia un juguete, porque se tiraba al piso cuando entraba Andy?(Toy Story)",
      "Hay solo 4 letras del abecedario que hacen que se junten tus labios",
      "Que hizo la primera persona en registrarse a una red social?"
    ];
    var rand = new Random();
    final inicioEstadia = DateTime(2020, 3, 20);
    var diaHoy = DateTime.now();
    var diasDeDiferencia = diaHoy.difference(inicioEstadia).inDays;
    return Scaffold(
      appBar: AppBar(
        title: Text("Datos Encerrados"),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body:
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(30.0),
                  color: Colors.white,
                  child: Center(
                    child: Text(diasDeDiferencia.toString() +" Dias de encierro",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ),
                ),
              ),

              Divider(
                  color: Colors.black,
              ),

              Expanded(
                child: Container(
                  padding: EdgeInsets.all(30.0),
                  color: Colors.white,

                  child: Column(
                    children: <Widget>[
                      Text("Dato de hoy:",
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2.0,
                        ),
                      ),

                     Container(
                       margin: EdgeInsets.all(10.0),
                      ),

                      Text("- " + datosCuriosos[(rand.nextInt(datosCuriosos.length -1))],
                          style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10.0),
                child: Text("Todos los dias mostramos un dato nuevo",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                  ),
                ),
              ),
            ],
          ),
    );
  }
}
