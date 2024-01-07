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
         padding: EdgeInsets.symmetric(horizontal: 44),
         child: CustomScrollView(
           slivers: [
             SliverToBoxAdapter(
               child: Padding(
                 padding: const EdgeInsets.fromLTRB(0, 4,0, 32),
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
                         'آیفون',
                         style: t16sb,
                         textAlign: TextAlign.center,
                       ),),
                       const SizedBox(width: 16,),
                       Image.asset('assets/images/icon_back.png'),
                       const SizedBox(width: 16,),
                     ],
                   ),
                 ),
               ),
             ),

             SliverToBoxAdapter(
               child: Padding(
                 padding: const EdgeInsets.only(bottom: 20),
                 child: Text('آیفون 2022 SE', style: t16sb.apply(color: Colors.black), textAlign: TextAlign.center,),
               ),
             ),


             SliverToBoxAdapter(
               child: Container(
                 width: 340,
                 height: 284,
                 decoration: const BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.all(Radius.circular(15))
                 ),
               ),
             ),


           ],
         ),
       ),
     );
   }
 }
