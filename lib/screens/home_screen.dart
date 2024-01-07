import 'package:apple_store/constants/app_theme.dart';
import 'package:apple_store/constants/font_styles.dart';
import 'package:apple_store/main.dart';
import 'package:apple_store/widgets/banner_slider.dart';
import 'package:apple_store/widgets/product_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundScreenColor,
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(44, 4, 44, 32),
              child: Container(
                height: 46,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15))
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 16,),
                    Image.asset('assets/images/icon_apple_blue.png'),
                    const Expanded(child: Text(
                      'جستجوی محصولات',
                      style: t16sb,
                      textAlign: TextAlign.end,
                    ),),
                    const SizedBox(width: 10,),
                    Image.asset('assets/images/icon_search.png'),
                    const SizedBox(width: 16,)
                  ],
                ),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: BannerSlider(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 32,
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(right: 44),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    'دسته بندی',
                    style: TextStyle(color: AppColors.grey),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  SizedBox(
                    height: 86,
                    child: ListView.builder(
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => const Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: CategoryHorizontalItemList(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 40,
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(right: 44),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 44),
                    child: Row(
                      children: [
                        Image.asset('assets/images/icon_left_categroy.png'),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'نمایش همه',
                          style: TextStyle(
                              color: AppColors.blue, fontFamily: 'sb'),
                        ),
                        const Spacer(),
                        const Text(
                          'پرفروش ترین ها',
                          style: TextStyle(color: AppColors.grey),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  SizedBox(
                    height: 200,
                    child: ListView.builder(
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return const ProductItem();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(right: 44),
              child: Column(
                children: [
                  const SizedBox(
                    height: 24,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 44),
                    child: Row(
                      children: [
                        Image.asset('assets/images/icon_left_categroy.png'),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'نمایش همه',
                          style: TextStyle(
                              color: AppColors.blue, fontFamily: 'sb'),
                        ),
                        const Spacer(),
                        const Text(
                          'پربازدید ترین ها',
                          style: TextStyle(color: AppColors.grey),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  SizedBox(
                    height: 200,
                    child: ListView.builder(
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return const ProductItem();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class CategoryHorizontalItemList extends StatelessWidget {
  const CategoryHorizontalItemList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 56,
          width: 56,
          decoration: ShapeDecoration(
              color: Colors.red,
              shadows: const [
                BoxShadow(
                  color: Colors.red,
                  spreadRadius: -7,
                  blurRadius: 15,
                  offset: Offset(0, 10),
                )
              ],
              shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(40))),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          'همه',
          style: TextStyle(fontFamily: 'SB', fontSize: 12),
        )
      ],
    );
  }
}
