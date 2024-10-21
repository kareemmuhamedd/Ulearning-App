import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning_app/common/routes/names.dart';
import 'package:ulearning_app/common/values/constants.dart';
import 'package:ulearning_app/global.dart';
import 'package:ulearning_app/pages/settings/widgets/settings_app_bar.dart';

import 'bloc/settings_blocs.dart';
import 'bloc/settings_states.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildSettingsAppBar(),
      body: SingleChildScrollView(
        child: BlocBuilder<SettingsBlocs, SettingsStates>(
          builder: (context, state) {
            return Container(
              child: Column(
                children: [
                  GestureDetector(
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
                                onPressed: () {
                                  Global.storageService.remove(
                                      AppConstants.STORAGE_USER_TOKEN_KEY);
                                  Navigator.of(context).pushNamedAndRemoveUntil(
                                      AppRoutes.SIGN_IN, (route) => false);
                                },
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
                            fit: BoxFit.fitHeight),
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
