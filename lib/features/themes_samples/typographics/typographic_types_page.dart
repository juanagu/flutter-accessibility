import 'package:flutter/material.dart';

import 'typographic_material_type_scale.dart';
import 'typographic_material_type_scale_fake_repository.dart';

class TypographicTypesPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TypographicMaterialTypeScale(
        typographicTypes: TypographicMaterialTypeScaleFakeRepository(context).getDefault(),
      ),
    );
  }

}