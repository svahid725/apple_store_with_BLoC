import 'package:apple_store/constants/app_theme.dart';
import 'package:apple_store/constants/font_styles.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Container(
        height: 216,
        width: 160,
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Expanded(child: Container()),
                Image.asset(
                  'assets/images/iphone.png',
                ),
                Positioned(
                  top: 0,
                  right: 10,
                  child: Image.asset(
                    'assets/images/active_fav_product.png',
                    width: 20,
                    height: 20,
                  ),
                ),
                Positioned(
                  left: 5,
                  bottom: 0,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20)),
                    child: const Text(
                      '%3',
                      style: t12sm,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: Text(
                'آیفون 13 پرومکس',
                style: TextStyle(fontFamily: 'sm', fontSize: 14),
              ),
            ),
            const Spacer(),
            Container(
              height: 53,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: const BoxDecoration(
                  color: AppColors.blue,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15)),
                  boxShadow: [
                    BoxShadow(
                        color: AppColors.blue,
                        blurRadius: 25,
                        spreadRadius: -12,
                        offset: Offset(0, 15))
                  ]),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Text(
                    'تومان',
                    style: t12sm,
                  ),
                  const SizedBox(width: 5),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '59,800,000',
                        style: t12sm.copyWith(
                            decoration: TextDecoration.lineThrough),
                      ),
                      const Text('49,800,000', style: t16sm),
                    ],
                  ),
                  const Spacer(),
                  Image.asset(
                    'assets/images/icon_right_arrow_cricle.png',
                    height: 24,
                    width: 24,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
