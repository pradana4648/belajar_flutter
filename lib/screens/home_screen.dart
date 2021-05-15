import 'package:belajar_flutter/data/local_data.dart';
import 'package:belajar_flutter/widgets/logo.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;
    print(size.height);
    print(size.width);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Grocery Shop'),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          )
        ],
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
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
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                controller: _controller,
                decoration: InputDecoration(
                  hintText: 'Search your product',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
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
                itemCount: LocalData.productImages.length,
                itemBuilder: (ctx, index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: LocalData.productImages[index].colors,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image:
                            AssetImage(LocalData.productImages[index].imageUrl),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: IconButton(
                                icon: Icon(Icons.add),
                                onPressed: () {},
                              ),
                            ),
                          ),
                          Expanded(child: SizedBox()),
                          Text(
                            LocalData.productImages[index].name,
                            style:
                                theme.headline6.copyWith(color: Colors.white),
                          ),
                          Text(
                            '\$' +
                                LocalData.productImages[index].price
                                    .toStringAsFixed(2),
                            style: theme.headline6.copyWith(
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
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
