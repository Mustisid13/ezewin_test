import 'package:ezewin_test/core/utils/app_assets.dart';
import 'package:ezewin_test/core/widgets/app_text_widget.dart';
import 'package:ezewin_test/core/widgets/image_container.dart';
import 'package:flutter/material.dart';

const cafeData = ["Central Perk", "Starbucks", "Blue Bottle", "Peet's"];

class CafeGrid extends StatelessWidget {
  const CafeGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        itemCount: cafeData.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 1.15,
            crossAxisCount: 2,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15),
        itemBuilder: (context, index) {
          return ImageContainer(
              image: const AssetImage(AppAssets.cafe),
              imageHeight: 115,
              imageWidth: double.infinity,
              fit: BoxFit.fitWidth,
              body: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: AppTextWidget(
                    text: cafeData[index],
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  )));
        });
  }
}
