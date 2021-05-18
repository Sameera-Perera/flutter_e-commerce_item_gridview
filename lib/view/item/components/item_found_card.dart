import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gridview_example/model/item.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class ItemCard extends StatelessWidget {
  ItemCard(this.item);
  final Item item;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(getProportionateScreenWidth(20)),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                offset: const Offset(0, 2),
                blurRadius: 10.0),
          ],
        ),
        child: Column(
          // mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              flex: 4,
              child: Center(
                child: Hero(
                  tag: "tagHero${item.id}",
                  child: Image.network(
                    item.image.toString(),
                    fit: BoxFit.scaleDown,
                    height: getProportionateScreenHeight(150),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(10),
            ),
            Flexible(
              flex: 3,
              child: Container(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "${this.item.name}",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: kPrimaryColor,
                              fontSize: getProportionateScreenWidth(16)),
                          maxLines: 2,
                        ),
                        Container(
                          // margin: EdgeInsets.only(top: 10, bottom: 5),
                            child: this.item.tags != null
                                ? Text(
                              "LKR ${this.item.tags.first.price.toString()}",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: kPrimaryColor,
                                  fontSize: 12),
                              maxLines: 1,
                            )
                                : Container()),
                        Text(
                          "${this.item.tags.first.name}",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.black54,
                              fontSize: 10),
                          maxLines: 1,
                        )
                      ])),
            )
          ],
        ),
      ),
    );
  }
}
