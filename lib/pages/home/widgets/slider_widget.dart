import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning_app/common/values/colors.dart';
import 'package:ulearning_app/pages/home/bloc/home_screen_blocs.dart';
import 'package:ulearning_app/pages/home/bloc/home_screen_events.dart';
import 'package:ulearning_app/pages/home/bloc/home_screen_states.dart';
import 'package:ulearning_app/pages/home/widgets/slider_item.dart';

class SliderWidget extends StatelessWidget {
  final HomeScreenStates state;

  const SliderWidget({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 20.h),
          width: 325.w,
          height: 160.h,
          child: PageView(
            onPageChanged: (index) {
              context.read<HomeScreenBlocs>().add(HomeScreenDots(index));
            },
            children: const [
              SliderItem(path: 'assets/icons/art.png'),
              SliderItem(path: 'assets/icons/image_1.png'),
              SliderItem(path: 'assets/icons/image_2.png'),
            ],
          ),
        ),
        Container(
          child: DotsIndicator(
            dotsCount: 3,
            position: state.index,
            decorator: DotsDecorator(
              color: AppColors.primaryThirdElementText,
              activeColor: AppColors.primaryElement,
              size: const Size.square(5.0),
              activeSize: const Size(17.0, 5.0),
              activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
          ),
        )
      ],
    );
  }
}
