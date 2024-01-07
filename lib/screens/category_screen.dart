import 'package:apple_store/constants/font_styles.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: CustomScrollView(
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
                      'دسته بندی',
                      style: t16sb,
                      textAlign: TextAlign.center,
                    ),),
                    const SizedBox(width: 10,),
                  ],
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 44),
            sliver: SliverGrid(delegate: SliverChildBuilderDelegate((context, index) => Container(
              decoration: const BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(15))
              ),
            )), gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
            )),
          )

        ],
      )),
    );
  }
}
