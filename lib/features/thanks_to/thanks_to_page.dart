import 'package:accessibilityapp/features/on_boarding/introduction_page.dart';
import 'package:accessibilityapp/features/thanks_to/thanks_to_dto.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'thanks_to_fake_repository.dart';
import 'thanks_to_item.dart';

class ThanksToPage extends StatelessWidget {
  final List<ThanksToDto> thanksToList = ThanksToFakeRepository().getAll();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return CustomScrollView(
      scrollDirection: Axis.vertical,
      slivers: <Widget>[
        SliverAppBar(
          title: Text('Quiero agradecer a'),
          elevation: 5.0,
          actions: [
            FlatButton(
              child: Icon(
                Icons.present_to_all,
                color: Theme.of(context).buttonColor,
              ),
              onPressed: () => _reOpenApp(context),
            )
          ],
        ),
        _buildList(context),
      ],
    );
  }

  Widget _buildList(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        _buildItems(context),
      ),
    );
  }

  List<Widget> _buildItems(BuildContext context) {
    return thanksToList.map((e) => _buildItem(context, e)).toList();
  }

  Widget _buildItem(BuildContext context, ThanksToDto thanksToDto) {
    return ThanksToItem(
      thanksToDto: thanksToDto,
    );
  }

  void _reOpenApp(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => IntroductionPage(),
      ), //MaterialPageRoute
    );
  }
}
