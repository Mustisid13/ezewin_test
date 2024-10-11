import 'package:ezewin_test/core/utils/app_assets.dart';
import 'package:ezewin_test/core/widgets/app_text_widget.dart';
import 'package:ezewin_test/core/widgets/image_container.dart';
import 'package:flutter/material.dart';

class PromotionsWidget extends StatelessWidget {
  const PromotionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ImageContainer(
              margin: const EdgeInsets.symmetric(horizontal: 20),
                width: MediaQuery.of(context).size.width,
                imageWidth: MediaQuery.of(context).size.width,
                image: const AssetImage(
                  AppAssets.coffee,
                ),
                body: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AppTextWidget(
                        text: "Promotion",
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                      AppTextWidget(
                        text: "Limited Time Offer!",
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ));
  }
}
