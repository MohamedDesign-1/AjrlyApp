import 'package:ajrly/core/components/custom_appbar.dart';
import 'package:ajrly/features/profile/domain/entities/get_profile_data_entity.dart';
import 'package:ajrly/features/profile/presentation/Widgets/profilebottom.dart';
import 'package:ajrly/features/profile/presentation/Widgets/userinfo.dart';

import 'package:ajrly/features/profile/presentation/Widgets/wellcome_card.dart';
import 'package:ajrly/features/profile/presentation/manager/profile_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/di/di.dart';

class ProfileScreen extends StatelessWidget {
  ProfileCubit profileCubit = getIt<ProfileCubit>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileCubit, ProfileState>(
      bloc: profileCubit..getProfile(),
      listener: (context, state) {
      },
      builder: (context, state) {
        GetProfileDataEntity? data;
        if (state is ProfileSuccess) {
          data = state.userProfileData;
        }

        return Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(90.h),
            child: CustomAppbar(title: 'الملف الشخصي'),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                spacing: 16.h,
                children: [
                  WelcomeCard(wlcUserName: data?.user?.fullName ?? "غير معروف"),
                  Userinfo(
                    birthday: data?.user?.birthday != null ? data!.user!.birthday!.split('T')[0] : "",
                    phone: data?.user?.mobile ?? "",
                    email: data?.user?.email ?? "",
                    id: data?.user?.nationalId ?? "",
                  ),
                  Profilebottom(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
