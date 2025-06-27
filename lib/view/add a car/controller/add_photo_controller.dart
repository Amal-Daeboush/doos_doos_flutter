import 'package:doss_doss/view/add%20a%20car/view/question_about_owner_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddPhotoController extends GetxController{
   void continuee() {
       Get.to(
        () => QuestionAboutOwnerScreen(),
        transition: Transition.downToUp,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeOut,
      );  
  }
}