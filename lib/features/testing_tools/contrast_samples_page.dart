import 'package:flutter/material.dart';

class ContrastSamplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('Ejemplos de contraste'),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return ListView(
      children: [
        _buildSample(Colors.black, Colors.white70),
        _buildSample(Colors.black87, Colors.white54),
        _buildSample(Colors.black54, Colors.white38),
        _buildSample(Colors.black45, Colors.white24),
        _buildSample(Colors.black38, Colors.white12),
        _buildSample(Colors.white24, Colors.black26),
        _buildSample(Colors.white38, Colors.black38),
        _buildSample(Colors.white54, Colors.black45),
        _buildSample(Colors.white60, Colors.black54),
        _buildSample(Colors.white70, Colors.black87),
      ],
    );
  }

  Widget _buildSample(Color backgroundColor, Color fontColor) {
    return Container(
      color: backgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ',
          style: TextStyle(color: fontColor),
        ),
      ),
    );
  }
}
