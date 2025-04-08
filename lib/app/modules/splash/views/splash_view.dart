import 'package:chat/app/components/widgets/my_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../components/resources/app_images.dart';
import '../../../components/widgets/app_status_bar.dart';
import '../../../components/widgets/common_image_view.dart';
import '../view_model/splash_view_model.dart';

class SplashView extends StatelessWidget {
  final SplashViewModel viewModel = Get.put(SplashViewModel());

  SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: AppStatusBar.splashStatusBar(),
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Center(
                child: MyText(text: "Chat App"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
