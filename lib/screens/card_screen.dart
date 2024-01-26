import 'package:apple_store/constants/app_theme.dart';
import 'package:apple_store/constants/font_styles.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundScreenColor,
      body: SafeArea(
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(44, 4, 44, 32),
                    child: Container(
                      height: 46,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 16,
                          ),
                          Image.asset(
                            'assets/images/icon_apple_blue.png',
                          ),
                          const Expanded(
                            child: Text(
                              'سبد خريد',
                              style: t16sb,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate((context, index) {
                    return const CardItem();
                  }, childCount: 10),
                ),
                const SliverToBoxAdapter(
                  child: CardItem(),
                ),
                const SliverPadding(padding: EdgeInsets.only(bottom: 80))
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width - 88,
              height: 53,
              margin: const EdgeInsets.only(bottom: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'ادامه فرآيند خريد',
                  style: t18sm,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  const CardItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 249,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      margin: const EdgeInsets.symmetric(horizontal: 44, vertical: 10),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text('111'),
                        const Text('111'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 2, horizontal: 8),
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Text(
                                '%3',
                                style: t12sm,
                              ),
                            ),
                            const Text('تومن'),
                            const Text('78000000'),
                          ],
                        ),
                        const Wrap(
                          children: [
                            OptionChip(),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Image.asset('assets/images/iphone.png')
              ],
            ),
          ),
          DottedLine(
            lineThickness: 3,
            dashLength: 8,
            dashColor: AppColors.grey.withOpacity(0.5),
            dashGapLength: 3,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('72000000'), SizedBox(width: 5), Text('تومان')],
            ),
          )
        ],
      ),
    );
  }
}

class OptionChip extends StatelessWidget {
  const OptionChip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColors.grey)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/icon_options.png'),
          const SizedBox(width: 10),
          const Text('hello'),
        ],
      ),
    );
  }
}
