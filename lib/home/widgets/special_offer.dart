import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/utils/app_assets.dart';
import '../../core/widgets/app_text_widget.dart';
import '../../core/widgets/image_container.dart';
const List<String> specialOffer = [
  "Live Music Night",
  "Coffee Tasting",
  "Brand Launching"
];

class SpecialOffer extends StatelessWidget {
  const SpecialOffer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: AppTextWidget(text: "Special Offer",fontSize: 18,fontWeight: FontWeight.w900,)),
        10.verticalSpace,
        SizedBox(
          height: 170,
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: specialOffer.length,
            physics: const ClampingScrollPhysics(),
            itemBuilder: (context,index){
            return ImageContainer(
              imageHeight: 100,
              fit: BoxFit.fitWidth,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                      width: 200,
                      imageWidth: 200,
                      image: const AssetImage(
                        AppAssets.coffee,
                      ),
                      body: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            AppTextWidget(
                              text: "Event ${index+1}",
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                            AppTextWidget(
                              text: specialOffer[index],
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ));
          }),
        ),
      ],
    );
  }
}