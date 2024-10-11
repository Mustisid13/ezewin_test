import 'package:ezewin_test/core/widgets/app_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/app_navigation_bar.dart';
import 'widgets/cafe_grid.dart';
import 'widgets/filter_chips.dart';
import 'widgets/promotions_widget.dart';
import 'widgets/search_bar.dart';
import 'widgets/special_offer.dart';
import 'widgets/user_review.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const Appbottomnavigationbar(),
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu, color: Colors.black)),
        title: const AppTextWidget(
          text: "Coffee Shop",
          fontWeight: FontWeight.w900,
          fontSize: 18,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart_outlined,
                color: Colors.black,
              ))
        ],
      ),
      body: ListView(
        
        children: [
          20.verticalSpace,
          const SearchProductsField(),
          20.verticalSpace,
          const FilterChips(),
          20.verticalSpace,
          const PromotionsWidget(),
          20.verticalSpace,
          const CafeGrid(),
          20.verticalSpace,
          const SpecialOffer(),
          20.verticalSpace,
          const UserReview(),
          20.verticalSpace,


        ],
      ),
    );
  }
}
