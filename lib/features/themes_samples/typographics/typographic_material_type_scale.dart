import 'package:flutter/material.dart';

import 'typographic_type.dart';

class TypographicMaterialTypeScale extends StatelessWidget {
  final List<TypographicType> typographicTypes;

  const TypographicMaterialTypeScale({
    Key key,
    this.typographicTypes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [],
    );
  }

  Widget _buildTypeItem(TypographicType typographicType) {
    return Container(
      child: Flexible(
        child: Text(
          typographicType.title,
          style: typographicType.textTheme,
        ),
      ),
    );
  }
}
