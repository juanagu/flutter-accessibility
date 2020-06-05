import 'package:flutter/material.dart';

import 'on_boarding_view_dto.dart';

class OnBoardingFakeRepository {
  List<OnBoardingViewDto> getAll() {
    return [
      OnBoardingViewDto(
        Colors.blueAccent,
        'Bienvenidos',
        'Creando aplicaciones accesibles en Flutter',
        Icons.accessibility,
        'https://www.reflectiz.com/wp-content/uploads/2019/04/1_HnSxmR5WbFCD98wXgUe3EA.png',
      ),
      OnBoardingViewDto(
        Colors.deepPurpleAccent,
        'Presentación',
        'Nombre: Juan Agú\n Edad: 29 años\nCiudad: Laboulaye, Córdoba\n Lenguajes: Java, C#, Dart, otros. \n Puesto: Lider Técnico en Clarika\n',
        Icons.person,
        'https://scontent.fcor5-1.fna.fbcdn.net/v/t1.0-9/64578981_10214183416330600_2269966314166550528_o.jpg?_nc_cat=109&_nc_sid=09cbfe&_nc_ohc=c6ihwJqFnoMAX-4RvSe&_nc_ht=scontent.fcor5-1.fna&oh=39c442f83d2b191b898cf65593f832e0&oe=5EF493E8',
      ),
      OnBoardingViewDto(
        Colors.purpleAccent,
        'Accesibilidad',
        'Que usuarios con incapacidades puedan entender, interactuar y navegar a través de nuestros productos o servicios.',
        Icons.accessibility,
        'https://www.dreamhost.com/blog/wp-content/uploads/2016/08/DreamHost-Accessibility-Tips-750x498.jpg',
      ),
      OnBoardingViewDto(
        Colors.redAccent,
        '1.000.000.000',
        '12% de la población mundial con incapacidades',
        Icons.people,
        'https://scontent.fcor5-1.fna.fbcdn.net/v/t1.0-9/27072999_1659547090750491_3947381469214513413_n.jpg?_nc_cat=104&_nc_sid=09cbfe&_nc_ohc=ZYi6vSKB_bUAX8KPNfo&_nc_ht=scontent.fcor5-1.fna&oh=89d0a4cddc2c1eb059da7ef44aef7dd1&oe=5EFF0A84',
      ),
      OnBoardingViewDto(
        Colors.orangeAccent,
        'Tipos de incapacidades',
        '1. Ceguera parcial o total\n2. Impedimentos auditivos\n3. Impedimentos Cognitivos\n4. Deficiencia motriz',
        Icons.accessibility,
        'https://www.coe.int/documents/13788219/0/Disability+image/9cba4f68-5d28-ab60-2689-8e1f1316c21d?t=1511947184000',
      ),
    ];
  }
}
