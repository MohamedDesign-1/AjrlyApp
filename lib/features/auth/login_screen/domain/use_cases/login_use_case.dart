import 'package:ajrly/core/errors/failures.dart';
import 'package:ajrly/features/auth/login_screen/domain/entities/login_response_entity.dart';
import 'package:ajrly/features/auth/login_screen/domain/repositories/login_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class LoginUseCase {
  LoginRepository loginRepository;
  LoginUseCase({required this.loginRepository});
  Future<Either<Failure , LoginResponseEntity>> invoke
      (String email , String password){
    return loginRepository.login(email: email, password: password);
  }
}