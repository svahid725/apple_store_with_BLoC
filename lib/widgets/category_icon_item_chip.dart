import 'package:flutter/material.dart';

class CategoryItemChip extends StatelessWidget {
  const CategoryItemChip({
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
