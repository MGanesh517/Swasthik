import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';


const tokenBox = "token";
void configLoading() {
  EasyLoading.instance
  // ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.light
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = Get.theme.primaryColor
    ..backgroundColor = Colors.green
    ..indicatorColor = Get.theme.primaryColor
    ..indicatorWidget = CircularProgressIndicator(color:Get.theme.primaryColor,)
    ..textColor = Get.theme.primaryColor
    ..maskColor = const Color.fromRGBO(43, 45, 46, 0.15).withOpacity(0.1)
  // ..userInteractions = true
    ..maskType =  EasyLoadingMaskType.custom
    ..dismissOnTap = true
    ..customAnimation = CustomAnimation();
}
showLoadingDialog({String? title, String? subTitle}) {
  configLoading();
  EasyLoading.instance.animationStyle =  EasyLoadingAnimationStyle.scale;
  return EasyLoading.show(status: title);
}

closeLoadingDialog() {
  return EasyLoading.dismiss();
}

class CustomAnimation extends EasyLoadingAnimation {
  CustomAnimation();

  @override
  Widget buildWidget(
      Widget child,
      AnimationController controller,
      AlignmentGeometry alignment,
      ) {
    return Opacity(
      opacity: controller.value,
      child: RotationTransition(
        turns: controller,
        child: child,
      ),
    );
  }
}