import 'package:accessibilityapp/common/utils/url_launcher_utils.dart';
import 'package:accessibilityapp/features/testing_tools/testing_tools_page.dart';
import 'package:accessibilityapp/features/themes_samples/themes_samples_page.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:accessibilityapp/features/accessibility_information_cards/information_cards_page.dart';
import 'package:accessibilityapp/features/home/home_page.dart';
import 'package:accessibilityapp/features/thanks_to/thanks_to_page.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

class RootPage extends StatefulWidget {
  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  PageController _pageController;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: _selectedIndex,
      keepPage: true,
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: _buildDrawer(context),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: [
          HomePage(),
          TestingToolsPage(),
          InformationCardsPage(),
          ThemesSamplesPage(),
          ThanksToPage(),
        ],
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
      floatingActionButton: _buildFloatingActionButton(),
    );
  }

  Widget _buildBottomNavigationBar() {
    if (kIsWeb) {
      return null;
    } else {
      return _buildMobileBottomNavigationBar();
    }
  }

  BottomNavyBar _buildMobileBottomNavigationBar() {
    return BottomNavyBar(
      selectedIndex: _selectedIndex,
      showElevation: true, // use this to remove appBar's elevation
      onItemSelected: (index) => setState(() {
        _selectedIndex = index;
        _pageController.animateToPage(index,
            duration: Duration(milliseconds: 300), curve: Curves.ease);
      }),
      items: [
        BottomNavyBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
          activeColor: Colors.red,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.important_devices),
          title: Text('Tools'),
          activeColor: Colors.purpleAccent,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.layers),
          title: Text('Cards'),
          activeColor: Colors.pinkAccent,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.style),
          title: Text('Themes'),
          activeColor: Colors.deepOrangeAccent,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.favorite),
          title: Text('Thanks'),
          activeColor: Colors.blue,
        ),
      ],
    );
  }

  Widget _buildDrawer(BuildContext context) {
    if (kIsWeb) {
      return Drawer(
        child: ListView(children: [
          _buildDrawerHeader(context),
          _buildDrawerItem(Icons.home, 'Home', 0),
          _buildDrawerItem(Icons.important_devices, 'Tools', 1),
          _buildDrawerItem(Icons.layers, 'Cards', 2),
          _buildDrawerItem(Icons.style, 'Themes', 3),
          _buildDrawerItem(Icons.favorite, 'Thanks', 4),
        ]),
      );
    }

    return null;
  }

  Widget _buildDrawerHeader(BuildContext context) {
    return GestureDetector(
      onTap: () => UrlLauncherUtils.openUrl('https://github.com/juanagu'),
      child: DrawerHeader(
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://avatars2.githubusercontent.com/u/4689126?s=460&u=4b887c818bccb13fb8d560bd7adea1711ad092e3&v=4',
                  ),
                ),
              ),
              Text(
                'Speaker: Juan Agú',
                style: Theme.of(context).textTheme.headline6,
              ),
            ],
          ),
        ),
      ),
    );
  }

  ListTile _buildDrawerItem(IconData iconData, String title, int index) {
    return ListTile(
      leading: Icon(iconData),
      selected: _selectedIndex == index,
      title: Text(title),
      onTap: () {
        _selectByIndex(index);
      },
    );
  }

  void _selectByIndex(int index) {
    if (_selectedIndex != index) {
      setState(() {
        Navigator.of(context).pop();
        _selectedIndex = index;
        _pageController.animateToPage(
          _selectedIndex,
          duration: const Duration(milliseconds: 250),
          curve: Curves.easeInOut,
        );
      });
    }
  }

  Widget _buildFloatingActionButton() {
    if (kIsWeb) {
      return Builder(
        builder: (context) {
          return FloatingActionButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            child: new Icon(Icons.menu),
          );
        },
      );
    }
    return null;
  }
}
