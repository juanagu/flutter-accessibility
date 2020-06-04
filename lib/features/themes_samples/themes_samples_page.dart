import 'package:accessibilityapp/application/app_state_notifier.dart';
import 'package:accessibilityapp/common/components/switch_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'typographics/typographic_material_type_scale.dart';
import 'typographics/typographic_material_type_scale_fake_repository.dart';

class ThemesSamplesPage extends StatefulWidget {
  @override
  _ThemesSamplesPageState createState() => _ThemesSamplesPageState();
}

class _ThemesSamplesPageState extends State<ThemesSamplesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: _buildSwitcherTheme(),
          ),
          _buildContent(),
        ],
      ),
    );
  }

  Widget _buildSwitcherTheme() {
    var label =
        Provider.of<AppStateNotifier>(context).isDarkMode ? 'Dark' : 'Light';
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            child: Text(
              'Tema: $label',
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          SwitchTheme(),
        ],
      ),
    );
  }

  Widget _buildContent() {
    return TypographicMaterialTypeScale(
      typographicTypes:
          TypographicMaterialTypeScaleFakeRepository(context).getDefault(),
    );
  }
}
