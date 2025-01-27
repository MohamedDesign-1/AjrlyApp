import 'package:ajrly/features/auth/register_screen/domain/use_cases/register_use_case.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../../core/errors/failures.dart';
import '../../domain/entities/register_response_entity.dart';

part 'register_state.dart';

@injectable
class RegisterCubit extends Cubit<RegisterState> {
  RegisterUseCase registerUseCase;

  RegisterCubit({required this.registerUseCase}) : super(RegisterInitial());

  var emailController = TextEditingController(text: 'mohamed@gmail.com');
  var passwordController = TextEditingController(text: '12345678Mm');
  var rePasswordController = TextEditingController(text: '12345678Mm');
  var fullNameController = TextEditingController(text: 'mohamed mahmoud');
  var mobileController = TextEditingController(text: '01117613264');
  var nationalIdController = TextEditingController(text: '12345678910114');
  var birthdayController = TextEditingController(text: '2000-01-01');
  var formKey = GlobalKey<FormState>();

  Future<void> register() async {
    emit(RegisterLoading());
    var either = await registerUseCase.invoke(
        emailController.text,
        passwordController.text,
        rePasswordController.text,
        fullNameController.text,
        mobileController.text,
        nationalIdController.text,
        birthdayController.text);
    either.fold((failure) {
      emit(RegisterError(failure));
    }, (response) {
      emit(RegisterSuccess(response));
    });
  }

  void onRegisterButtonPressed() {
    if (formKey.currentState!.validate()) {
      register();
    } else {
      emit(RegisterError(ServerFailure(errorMessage: 'ادخل معلومات صحيحة')));
    }
  }
}
