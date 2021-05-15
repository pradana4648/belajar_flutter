import 'package:flutter/material.dart';

import 'logo.dart';

class Header extends StatelessWidget {
  final TextTheme theme;

  const Header({Key key, @required this.theme}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      // height: size.height * 0.2,
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome',
                style: theme.headline2,
              ),
              Text(
                'to our shop',
                style: theme.headline4,
              ),
            ],
          ),
          Expanded(
            child: LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth > 400) {
                  return BuildLogo(height: 140);
                }
                if (constraints.maxWidth < 400) {
                  return BuildLogo(height: 120);
                }

                return BuildLogo(height: 200);
              },
            ),
          )
        ],
      ),
    );
  }
}
