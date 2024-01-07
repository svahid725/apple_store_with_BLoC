import 'package:apple_store/constants/app_theme.dart';
import 'package:apple_store/widgets/category_icon_item_chip.dart';
import 'package:flutter/material.dart';

import '../constants/font_styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 44),
        child: Column(
          children: [
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 4, 0, 32),
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
                        'حساب کاربری',
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
            const Text(
              'وحید صدر',
              style: t16sb,
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              '09391151254',
              style: t10sb,
            ),
            const SizedBox(
              height: 32,
            ),
            const Directionality(
              textDirection: TextDirection.rtl,
              child: Wrap(
                runSpacing: 12,
                spacing: 12,
                children: [
                  CategoryItemChip(),
                  CategoryItemChip(),
                  CategoryItemChip(),
                  CategoryItemChip(),
                  CategoryItemChip(),
                  CategoryItemChip(),
                  CategoryItemChip(),
                  CategoryItemChip(),
                  CategoryItemChip(),
                  CategoryItemChip(),
                ],
              ),
            ),
            const Spacer(),
            Text('apple shop by vahid sadr',
                style: t10sb.apply(color: AppColors.grey)),
            Text('v- 1.0.00', style: t10sb.apply(color: AppColors.grey)),
            Text('instagram.com/vahid_sadr7',
                style: t10sb.apply(color: AppColors.grey)),
            const SizedBox(
              height: 12,
            )
          ],
        ),
      )),
    );
  }
}
