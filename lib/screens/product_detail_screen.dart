import 'dart:ui';

import 'package:apple_store/constants/app_theme.dart';
import 'package:apple_store/constants/font_styles.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundScreenColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 44),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 12, 0, 32),
                child: Container(
                  height: 46,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 16,
                      ),
                      Image.asset('assets/images/icon_apple_blue.png'),
                      const Expanded(
                        child: Text(
                          'آیفون',
                          style: t16sb,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Image.asset('assets/images/icon_back.png'),
                      const SizedBox(
                        width: 16,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Text(
                  'iphone 2022 SE',
                  style: t16sb.apply(color: Colors.black),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                width: 340,
                height: 284,
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/images/icon_star.png'),
                            const SizedBox(
                              width: 4,
                            ),
                            Text('4.6',
                                style: t12sm.apply(color: Colors.black)),
                          ],
                        ),
                        Image.asset('assets/images/iphone.png', height: 140),
                        Image.asset('assets/images/icon_favorite_deactive.png'),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      height: 70,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 70,
                            height: 70,
                            margin: const EdgeInsets.only(left: 12),
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              border: Border.all(
                                color: AppColors.grey,
                              ),
                            ),
                            child: Image.asset('assets/images/iphone.png'),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const SizedBox(height: 20),
                  Text('انتخاب رنگ', style: t12sm.apply(color: Colors.black),),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 26,
                        width: 26,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: AppColors.grey,
                            )
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        height: 26,
                        width: 26,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: AppColors.grey,
                            )
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        height: 26,
                        width: 26,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: AppColors.grey,
                            )
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const SizedBox(height: 20),
                  Text('انتخاب حافظه داخلی', style: t12sm.apply(color: Colors.black),),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 26,
                        width: 68,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: AppColors.grey,
                            )
                        ),
                        child: Text('128', style : t12sm.apply(color: Colors.black)),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        height: 26,
                        width: 68,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: AppColors.grey,
                          )
                        ),
                        child: Text('256', style: t12sm.apply(color: Colors.black),),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        height: 26,
                        width: 68,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: AppColors.grey,
                            )
                        ),
                        child: Text('512',style:  t12sm.apply(color: Colors.black),),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                height: 46,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                margin: const EdgeInsets.only(top:24 ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: AppColors.grey
                  )
                ),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Row(
                    children: [
                      Text('مشخصات فنی :',style: t12sm.apply(color: Colors.black)),
                      const Spacer(),
                      Text('مشاهده',style: t12sm.apply(color: AppColors.blue),),
                      const SizedBox(width: 10),
                      Image.asset('assets/images/icon_left_categroy.png')
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                height: 46,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                margin: const EdgeInsets.only(top:24),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                        color: AppColors.grey
                    )
                ),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Row(
                    children: [
                      Text('توضیحات محصول :',style: t12sm.apply(color: Colors.black)),
                      const Spacer(),
                      Text('مشاهده',style: t12sm.apply(color: AppColors.blue),),
                      const SizedBox(width: 10),
                      Image.asset('assets/images/icon_left_categroy.png')
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                height: 46,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                margin: const EdgeInsets.symmetric(vertical:24 ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                        color: AppColors.grey
                    )
                ),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Row(
                    children: [
                      Text('نظرات کاربران :',style: t12sm.apply(color: Colors.black)),
                      const SizedBox(width: 10),
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(height: 26,
                          width: 26,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: AppColors.grey,
                                )
                            ),
                          ),
                          Positioned(
                            right: 20,
                            child: Container(height: 26,
                              width: 26,
                              decoration: BoxDecoration(
                                  color: Colors.yellow,
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                    color: AppColors.grey,
                                  )
                              ),
                            ),
                          ),
                          Positioned(
                            right: 40,
                            child: Container(height: 26,
                              width: 26,
                              decoration: BoxDecoration(
                                  color: Colors.yellow,
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                    color: AppColors.grey,
                                  )
                              ),
                            ),
                          ),
                          Positioned(
                            right: 60,
                            child: Container(height: 26,
                              width: 26,
                              decoration: BoxDecoration(
                                  color: Colors.yellow,
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                    color: AppColors.grey,
                                  )
                              ),
                            ),
                          ),
                          Positioned(
                            right: 80,
                            child: Container(height: 26,
                              width: 26,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: AppColors.grey,
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                    color: AppColors.grey,
                                  )
                              ),
                              child: Text('10+',style: t12sb.apply(color: Colors.white),),
                            ),
                          ),

                        ],
                      ),
                      const Spacer(),
                      Text('مشاهده',style: t12sm.apply(color: AppColors.blue),),
                      const SizedBox(width: 10),
                      Image.asset('assets/images/icon_left_categroy.png')
                    ],
                  ),
                ),
              ),
            ),

            const SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PriceTagButton(),
                  AddToBasketButton(),

                ],
              ),
            ),

            const SliverToBoxAdapter(
              child: SizedBox(height: 32,),
            )
          ],
        ),
      ),
    );
  }
}

class AddToBasketButton extends StatelessWidget {
  const AddToBasketButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Container(
          height: 60,
          width: 130,
          decoration: BoxDecoration(
            color: AppColors.blue,
            borderRadius: BorderRadius.circular(15)
          ),
        ),
        Container(
          height: 53,
          width: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: Colors.white,
            )
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: BackdropFilter(filter: ImageFilter.blur(sigmaX: 40, sigmaY:10),
            child: const Center(child: Text('افزودن به سبد خرید',style: t16sm,))),
          ),
        )
      ],
    );
  }
}


class PriceTagButton extends StatelessWidget {
  const PriceTagButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Container(
          height: 60,
          width: 130,
          decoration: BoxDecoration(
              color: AppColors.green,
              borderRadius: BorderRadius.circular(15)
          ),
        ),
        Container(
          height: 53,
          width: 150,

          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: Colors.white,
              )
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: BackdropFilter(filter: ImageFilter.blur(sigmaX: 40, sigmaY:10),
                child:Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const SizedBox(width: 4,),
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

                   Container(
                     height: 24,
                     width: 24,
                     alignment: Alignment.center,
                     decoration: BoxDecoration(
                       color: AppColors.red,
                       borderRadius: BorderRadius.circular(8)
                     ),
                     child: Text('%5',style: t12sb.apply(color: Colors.white),),
                   ),
                    const SizedBox(width: 4,),



                  ],
                )

            ),
          ),
        )
      ],
    );
  }
}
