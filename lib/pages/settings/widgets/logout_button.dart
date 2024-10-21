import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning_app/pages/application/bloc/app_events.dart';

import '../../../common/routes/names.dart';
import '../../../common/values/constants.dart';
import '../../../global.dart';
import '../../application/bloc/app_blocs.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    // this function for make user can logout
    void removeUserData() {
      context.read<AppBlocs>().add(const TriggerAppEvent(0));
      Global.storageService.remove(AppConstants.STORAGE_USER_TOKEN_KEY);
      Navigator.of(context)
          .pushNamedAndRemoveUntil(AppRoutes.SIGN_IN, (route) => false);
    }

    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              backgroundColor: Colors.white,
              title: const Text('Confirm logout'),
              content: const Text('Confirm logout'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () => removeUserData(),
                  child: const Text('Confirm'),
                ),
              ],
            );
          },
        );
      },
      child: Container(
        height: 100.h,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/icons/Logout.png'),
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
    );
  }
}
