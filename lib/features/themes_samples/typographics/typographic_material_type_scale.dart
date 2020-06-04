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
    return SliverList(
      delegate: SliverChildListDelegate(
        typographicTypes.map(_buildTypeItem).toList(),
      ),
    );
  }

  Widget _buildTypeItem(TypographicType typographicType) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 4.0,
        ),
        child: Text(
          typographicType.title,
          style: typographicType.textTheme,
          maxLines: 1,
          textDirection: TextDirection.ltr,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
