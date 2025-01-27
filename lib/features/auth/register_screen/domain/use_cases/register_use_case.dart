import 'package:ajrly/core/errors/failures.dart';
import 'package:ajrly/features/auth/register_screen/domain/repositories/register_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../entities/register_response_entity.dart';

@injectable
class RegisterUseCase {
  RegisterRepository registerRepository;

  RegisterUseCase({required this.registerRepository});

  Future<Either<Failure, RegisterResponseEntity>> invoke(
      String email,
      String password,
      String rePassword,
      String fullName,
      String mobile,
      String nationalId,
      String birthday) async {
    return await registerRepository.register(
        email, password, rePassword, fullName, mobile, nationalId, birthday);
  }
}
