import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning_app/common/values/colors.dart';
import 'package:ulearning_app/pages/home/widgets/home_app_bar.dart';
import 'package:ulearning_app/pages/home/widgets/home_screen_text.dart';
import 'package:ulearning_app/pages/home/widgets/home_search_widget.dart';
import 'package:ulearning_app/pages/home/widgets/slider_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildHomeAppBar(),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 0, horizontal: 25.w),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomePageText(
              text: 'Hello',
              color: AppColors.primaryThirdElementText,
            ),
            const HomePageText(
              text: 'Kareem',
              top: 5,
            ),
            SizedBox(height: 20.h,),
            const HomeSearchWidget(),
            const SliderWidget(),

          ],
        ),
      ),
    );
  }
}
