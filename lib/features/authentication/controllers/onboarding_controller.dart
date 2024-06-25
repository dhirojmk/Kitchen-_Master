import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../../navigation_menu.dart';
import '../screens/login/login.dart';
 class OnBoardingController extends GetxController{
   static OnBoardingController get instance => Get.find();

   /// Variables
   final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

 ///Update Current Index When page Scroll
 void updatePageIndicator(index) => currentPageIndex.value = index;

   ///jump to the specific dot selected page.
 void dotNavigationClick(index){
   currentPageIndex.value = index;
   pageController.jumpTo(index);
 }

   ///Update Current index & jump to next page

 void nextPage(){
   if(currentPageIndex.value==2){
     Get.offAll(const LoginScreen());
   }
   else{
     int page = currentPageIndex.value +1;
     pageController.jumpToPage(page);
   }
 }

   ///update Current Index & jump tto the Page
 void skipPage(){
     Get.offAll(const LoginScreen());
 }
 }