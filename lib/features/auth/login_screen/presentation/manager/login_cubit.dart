import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../../core/errors/failures.dart';
import '../../../../../core/utils/shared_pref_utils.dart';
import '../../domain/entities/login_response_entity.dart';
import '../../domain/use_cases/login_use_case.dart';

part 'login_state.dart';

@injectable
class LoginCubit extends Cubit<LoginState> {
  var formKey = GlobalKey<FormState>();
  var emailController = TextEditingController(text: 'mohamed25@gmail.com');
  var passwordController = TextEditingController(text: 'Yahia123');

  LoginUseCase loginUseCase;

  LoginCubit({required this.loginUseCase}) : super(LoginInitial());

  void login() async {
    emit(LoginLoadingState());
    var either = await loginUseCase.invoke(emailController.text, passwordController.text);
    either.fold((failure) {
      emit(LoginErrorState(failure));
    }, (response) {
      emit(LoginSuccessState(response));
      SharedPrefUtils.saveDate(key: 'token', value:response.token);
      print('token ${response.token}');
    }
    );
  }

  void onLoginButtonPressed() {
    if (formKey.currentState!.validate()) {
      login();
    } else {
      emit(LoginErrorState(ServerFailure(errorMessage: 'ادخل معلومات صحيحة')));
    }
  }
}
