import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning_app/common/values/colors.dart';
import 'package:ulearning_app/pages/home/widgets/home_app_bar.dart';
import 'package:ulearning_app/pages/home/widgets/home_grid_view_item.dart';
import 'package:ulearning_app/pages/home/widgets/home_screen_text.dart';
import 'package:ulearning_app/pages/home/widgets/home_search_widget.dart';
import 'package:ulearning_app/pages/home/widgets/menu_widget.dart';
import 'package:ulearning_app/pages/home/widgets/slider_widget.dart';

import 'bloc/home_screen_blocs.dart';
import 'bloc/home_screen_states.dart';

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
      body: BlocBuilder<HomeScreenBlocs, HomeScreenStates>(
        builder: (context, state) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 0, horizontal: 25.w),
            child: CustomScrollView(
              slivers: [
                const SliverToBoxAdapter(
                  child: HomeScreenText(
                    text: 'Hello',
                    color: AppColors.primaryThirdElementText,
                  ),
                ),
                const SliverToBoxAdapter(
                  child: HomeScreenText(
                    text: 'Kareem',
                    top: 5,
                  ),
                ),
                SliverPadding(
                  padding: EdgeInsets.only(top: 20.h),
                ),
                const SliverToBoxAdapter(child: HomeSearchWidget()),
                SliverToBoxAdapter(child: SliderWidget(state: state)),
                const SliverToBoxAdapter(child: MenuWidget()),
                SliverPadding(
                  padding: EdgeInsets.symmetric(
                    vertical: 18.h,
                    horizontal: 0.w,
                  ),
                ),
                SliverGrid(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 15,
                      crossAxisSpacing: 15,
                      childAspectRatio: 1.6),
                  delegate: SliverChildBuilderDelegate(
                    childCount: 4,
                    (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {},
                        child: const HomeGridViewItem(),
                      );
                    },
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
