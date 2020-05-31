import 'package:accessibilityapp/common/utils/url_launcher_utils.dart';
import 'package:accessibilityapp/features/accessibility_information_cards/cards/information_bullet_list_card.dart';
import 'package:accessibilityapp/features/accessibility_information_cards/cards/information_definition_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';

import 'cards/card_option.dart';
import 'cards/information_number_card.dart';

class InformationCardsPage extends StatefulWidget {
  @override
  _InformationCardsPageState createState() => _InformationCardsPageState();
}

class _InformationCardsPageState extends State<InformationCardsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Accesibilidad en Flutter'),
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.7,
      child: TinderSwapCard(
        orientation: AmassOrientation.BOTTOM,
        totalNum: 6,
        stackNum: 3,
        swipeEdge: 4.0,
        maxWidth: MediaQuery.of(context).size.width * 0.95,
        maxHeight: MediaQuery.of(context).size.width,
        minWidth: MediaQuery.of(context).size.width * 0.9,
        minHeight: MediaQuery.of(context).size.width * 0.9,
        cardBuilder: _buildCard,
      ),
    );
  }

  Widget _buildCard(BuildContext context, int index) {
    switch (index) {
      case 0:
        return _buildAccessibilityDefinition();
      case 1:
        return _buildPeopleWithDisabilities();
      case 2:
        return _buildDisabilitiesTypes();
      case 3:
        return _buildTips();
      case 4:
        return _buildTools();
      case 5:
        return _buildSourceUtils();
      default:
        return Card();
    }
  }

  Widget _buildPeopleWithDisabilities() {
    return InformationNumberCard(
      title: 'Personas con incapacidades',
      number: '1 B',
      color: Theme.of(context).accentColor,
    );
  }

  Widget _buildDisabilitiesTypes() {
    return InformationBulletListCard(
      title: 'INCAPACIDADES',
      options: [
        CardOption('Ceguera parcial o total', null),
        CardOption('Impedimentos auditivos', null),
        CardOption('Impedimentos cognitivos', null),
        CardOption('Deficiencia motriz temporal o permantente', null),
      ],
    );
  }

  Widget _buildTips() {
    return InformationBulletListCard(
      title: 'TIPS',
      options: [
        CardOption(
          'Fuentes grandes',
          'https://material.io/design/typography/the-type-system.html#type-scale',
        ),
        CardOption(
          'Contraste',
          'https://www.w3.org/TR/UNDERSTANDING-WCAG20/visual-audio-contrast-contrast.html',
        ),
        CardOption(
          'Screen Readers',
          'https://youtu.be/bWbBgbmAdQs?t=401',
        ),
        CardOption(
          'Navegación por teclado',
          'https://webaim.org/techniques/keyboard/',
        ),
      ],
    );
  }

  Widget _buildTools() {
    return InformationBulletListCard(
      title: 'TOOLS',
      options: [
        CardOption(
          'Accessibility Scanner (Android)',
          'https://play.google.com/store/apps/details?id=com.google.android.apps.accessibility.auditor&hl=en',
        ),
        CardOption(
          'Accessibility Inspector(OSX, iOS)',
          'https://developer.apple.com/library/archive/documentation/Accessibility/Conceptual/AccessibilityMacOSX/OSXAXTestingApps.html',
        ),
        CardOption(
          'Chrome Audit (Web/Mobile)',
          'https://www.youtube.com/watch?v=wkvslBGkhZY',
        ),
      ],
    );
  }

  Widget _buildSourceUtils() {
    return InformationBulletListCard(
      title: 'Links',
      options: [
        CardOption(
          '7 Accessibility Developer Guide',
          'https://www.accessibility-developer-guide.com/',
        ),
        CardOption(
          'Material Design Acessibility',
          'https://material.io/design/usability/accessibility.html#understanding-accessibility',
        ),
        CardOption(
          'An accessible process for inclusive design',
          'https://www.youtube.com/watch?v=TAzkrXTGEOM',
        ),
        CardOption(
          'Chrome OS Accessibility',
          'https://www.youtube.com/watch?v=vnSDqh6zT6Y',
        ),
        CardOption(
          '7 Things about Accessibility',
          'https://medium.com/salesforce-ux/7-things-every-designer-needs-to-know-about-accessibility-64f105f0881b',
        ),
        CardOption(
          'Chrome Devtools',
          'https://developers.google.com/web/tools/chrome-devtools/accessibility/reference',
        )
      ],
    );
  }

  Widget _buildAccessibilityDefinition() {
    return InformationDefinitionCard(
      title: 'Accesibilidad',
      definition:
          'Crear productos o brindar servicios de alta calidad para que todas las personas puedan usarlas.',
      deepLink: 'https://www.w3.org/WAI/fundamentals/accessibility-intro/',
    );
  }
}
