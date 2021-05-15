import 'package:belajar_flutter/data/local_data.dart';
import 'package:flutter/material.dart';

class GroceryItem extends StatelessWidget {
  final TextTheme theme;
  final int index;

  const GroceryItem({Key key, this.theme, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: LocalData.productImages[index].colors,
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(LocalData.productImages[index].imageUrl),
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
              style: theme.headline6.copyWith(color: Colors.white),
            ),
            Text(
              '\$' + LocalData.productImages[index].price.toStringAsFixed(2),
              style: theme.headline6
                  .copyWith(fontWeight: FontWeight.w400, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
