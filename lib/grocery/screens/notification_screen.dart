import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  final TextTheme theme;

  const NotificationScreen({Key? key, required this.theme}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
      ),
      body: Center(
        child: Text(
          'There is nothing here',
          style: theme.headline6,
        ),
      ),
    );
  }
}
