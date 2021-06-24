import 'package:belajar_flutter/data/product.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final Product product;

  const DetailScreen({required this.product});

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int qty = 1;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      bottomNavigationBar: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: widget.product.colors),
        onPressed: () {},
        child: Text('Buy Now'),
      ),
      appBar: AppBar(
        title: Text(widget.product.name!),
      ),
      body: Column(
        children: [
          Container(
            height: size.height * 0.4,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.product.imageUrl!),
              ),
            ),
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: Icon(Icons.art_track_rounded),
                title: Text(
                  'Description',
                  style: textTheme.headline6,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  '\t\t' + widget.product.description!,
                  style: textTheme.headline6!
                      .copyWith(fontWeight: FontWeight.w400),
                ),
              ),
              Divider(indent: 10, endIndent: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildButton(Icons.add, () {
                    if (qty >= 1) {
                      setState(() {
                        qty++;
                      });
                    }
                  }),
                  Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.all(10),
                    child: Text(qty.toString()),
                  ),
                  buildButton(Icons.remove, () {
                    if (qty > 1) {
                      setState(() {
                        qty--;
                      });
                    }
                  }),
                ],
              )
            ],
          ))
        ],
      ),
    );
  }

  Material buildButton(IconData icons, VoidCallback onTap) {
    return Material(
      color: widget.product.colors,
      borderRadius: BorderRadius.circular(5),
      child: InkWell(
        borderRadius: BorderRadius.circular(5),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Icon(icons, color: Colors.white),
        ),
      ),
    );
  }
}
