import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/utils/app_assets.dart';
import '../../core/widgets/app_text_widget.dart';
import '../../core/widgets/image_container.dart';

const List<Map<String,dynamic>> reviews = [
  {
    "name":"John Doe",
    "review":"Great Coffee!"
  },
  {
    "name":"Jane Smith",
    "review":"Loved Ambience!"
  },
  {
    "name":"Alice Doe",
    "review":"Yummy Sandwhiches!"
  },
];

class UserReview extends StatelessWidget {
  const UserReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: AppTextWidget(
              text: "User Reviews",
              fontSize: 18,
              fontWeight: FontWeight.w900,
            )),
        10.verticalSpace,
        SizedBox(
          height: 170,
          child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: reviews.length,
              physics: const ClampingScrollPhysics(),
              itemBuilder: (context, index) {
                return ImageContainer(
                    imageHeight: 100,
                    fit: BoxFit.fitWidth,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    width: 150,
                    imageWidth: 150,
                    image: const AssetImage(
                      AppAssets.person,
                    ),
                    body: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          AppTextWidget(
                            text: reviews[index]["name"],
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                          AppTextWidget(
                            text: reviews[index]["review"],
                            fontSize: 14,
                            maxlines: 1,
                            
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
