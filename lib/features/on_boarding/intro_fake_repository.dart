import 'package:flutter/material.dart';

import 'intro_page_view.dart';

class IntroFakeRepository {
  List<IntroPageView> getAll() {
    return [
      IntroPageView(
        Colors.blueAccent,
        'Bienvenidos',
        'Creando aplicaciones accesibles en Flutter',
        Icons.accessibility,
        'https://www.reflectiz.com/wp-content/uploads/2019/04/1_HnSxmR5WbFCD98wXgUe3EA.png',
      ),
      IntroPageView(
        Colors.deepPurpleAccent,
        'Presentación',
        'Nombre: Juan Agú\n Edad: 29 años\nCiudad: Laboulaye, Córdoba\n Lenguajes: Java, C#, Dart, otros. \n Puesto: Lider Técnico en Clarika\n',
        Icons.person,
        'https://scontent.fcor5-1.fna.fbcdn.net/v/t1.0-9/64578981_10214183416330600_2269966314166550528_o.jpg?_nc_cat=109&_nc_sid=09cbfe&_nc_ohc=c6ihwJqFnoMAX-4RvSe&_nc_ht=scontent.fcor5-1.fna&oh=39c442f83d2b191b898cf65593f832e0&oe=5EF493E8',
      ),
      IntroPageView(
        Colors.purpleAccent,
        'Temas',
        '1. ¿Qué es Accesibilidad?\n 2. ¿Como logramos que nuestras aplicaciones sean accesibles? \n 3. ¿Como testeamos si nuestras aplicaciones son accesibles? \n 4. Preguntas',
        Icons.book,
        'https://www.dreamhost.com/blog/wp-content/uploads/2016/08/DreamHost-Accessibility-Tips-750x498.jpg',
      ),
    ];
  }
}
