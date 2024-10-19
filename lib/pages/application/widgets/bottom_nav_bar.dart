import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../common/values/colors.dart';
import '../bloc/app_blocs.dart';
import '../bloc/app_events.dart';

class BottomNavBar extends StatelessWidget {
  final int index;

  const BottomNavBar({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: false,
      showSelectedLabels: false,
      selectedItemColor: AppColors.primaryElement,
      unselectedItemColor: AppColors.primaryFourthElementText,
      onTap: (index) {
        context.read<AppBlocs>().add(TriggerAppEvent(index));
      },
      enableFeedback: false,
      items: [
        BottomNavigationBarItem(
          icon: SizedBox(
            width: 15.w,
            height: 15.h,
            child: Image.asset('assets/icons/home.png'),
          ),
          label: 'Home',
          activeIcon: SizedBox(
            width: 15.w,
            height: 15.h,
            child: Image.asset(
              'assets/icons/home.png',
              color: AppColors.primaryElement,
            ),
          ),
        ),
        BottomNavigationBarItem(
          icon: SizedBox(
            width: 15.w,
            height: 15.h,
            child: Image.asset('assets/icons/search2.png'),
          ),
          label: 'Search',
          activeIcon: SizedBox(
            width: 15.w,
            height: 15.h,
            child: Image.asset(
              'assets/icons/search2.png',
              color: AppColors.primaryElement,
            ),
          ),
        ),
        BottomNavigationBarItem(
          icon: SizedBox(
            width: 15.w,
            height: 15.h,
            child: Image.asset('assets/icons/play-circle1.png'),
          ),
          label: 'Course',
          activeIcon: SizedBox(
            width: 15.w,
            height: 15.h,
            child: Image.asset(
              'assets/icons/play-circle1.png',
              color: AppColors.primaryElement,
            ),
          ),
        ),
        BottomNavigationBarItem(
          icon: SizedBox(
            width: 15.w,
            height: 15.h,
            child: Image.asset('assets/icons/message-circle.png'),
          ),
          label: 'Chat',
          activeIcon: SizedBox(
            width: 15.w,
            height: 15.h,
            child: Image.asset(
              'assets/icons/message-circle.png',
              color: AppColors.primaryElement,
            ),
          ),
        ),
        BottomNavigationBarItem(
          icon: SizedBox(
            width: 15.w,
            height: 15.h,
            child: Image.asset('assets/icons/person2.png'),
          ),
          label: 'Profile',
          activeIcon: SizedBox(
            width: 15.w,
            height: 15.h,
            child: Image.asset(
              'assets/icons/person2.png',
              color: AppColors.primaryElement,
            ),
          ),
        ),
      ],
    );
  }
}

