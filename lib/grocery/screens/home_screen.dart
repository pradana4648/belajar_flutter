import 'package:belajar_flutter/grocery/data/local_data.dart';
import 'package:belajar_flutter/grocery/screens/detail_screen.dart';
import 'package:belajar_flutter/grocery/widgets/grocery_item.dart';
import 'package:belajar_flutter/grocery/widgets/header.dart';
import 'package:flutter/material.dart';

import 'notification_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _result = '';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Grocery Shop'),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (ctx) {
                  return NotificationScreen(theme: theme);
                }),
              );
            },
          )
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              child: FlutterLogo(),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('About'),
              onTap: () {
                showAboutDialog(
                  context: context,
                  applicationName: 'Grocery Shop',
                  children: [
                    Text('Sebuah aplikasi dengan Flutter untuk submission :)'),
                    Text('by: Danar Putra'),
                  ],
                  useRootNavigator: true,
                );
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Header(theme: theme),
            // SearchBar(controller: _controller),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Search your product',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onChanged: (value) {
                  setState(() {
                    _result = value;
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemCount: LocalData.products
                    .where((element) =>
                        element.name!.toLowerCase().contains(_result))
                    .length,
                itemBuilder: (ctx, index) {
                  final filteredProducts = LocalData.products
                      .where((element) =>
                          element.name!.toLowerCase().contains(_result))
                      .toList();
                  return GroceryItem(
                    product: filteredProducts[index],
                    navigator: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) =>
                            DetailScreen(product: filteredProducts[index]),
                      ),
                    ),
                    theme: theme,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
