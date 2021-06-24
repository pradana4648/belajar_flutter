import 'package:belajar_flutter/grocery/data/product.dart';
import 'package:flutter/material.dart';

class GroceryItem extends StatelessWidget {
  final TextTheme theme;
  final Product product;
  final VoidCallback navigator;

  const GroceryItem(
      {Key? key,
      required this.theme,
      required this.product,
      required this.navigator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: product.colors,
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: navigator,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(product.imageUrl!),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Material(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    child: InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: Icon(Icons.add),
                      ),
                    ),
                  ),
                ),
                Expanded(child: SizedBox()),
                Text(
                  product.name!,
                  style: theme.headline6!.copyWith(color: Colors.white),
                ),
                Text(
                  '\$' + product.price!.toStringAsFixed(2),
                  style: theme.headline6!.copyWith(
                      fontWeight: FontWeight.w400, color: Colors.white),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
