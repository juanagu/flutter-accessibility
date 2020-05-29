import 'package:flutter/material.dart';

class InformationNumberCard extends StatelessWidget {

  final String number;
  final String title;

  final Color color;

  const InformationNumberCard({
    Key key,
    this.number,
    this.title,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              number,
              style:
                  Theme.of(context).textTheme.headline1.copyWith(color: color),
            ),
            Text(
              title,
              style:
                  Theme.of(context).textTheme.headline6.copyWith(color: color),
            ),
          ],
        ),
      ),
    );
  }
}
