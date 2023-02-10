
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:savyor/data/models/active_product.dart';
import 'package:savyor/domain/interfaces/i_product_repo.dart';
import 'package:savyor/domain/interfaces/i_user_repo_.dart';
import '../../../application/core/failure/failure.dart';
import '../../../application/core/usecases/usecase.dart';
import '../../data/models/supported_store.dart';
import '../../data/models/track_product.dart';
import '../../data/models/user.dart';
import '../entities/signup_entity/sign_up_entity.dart';
import '../entities/track_product_entity/track_product_entity.dart';
import '../interfaces/i_app_repo_.dart';
import '../interfaces/i_register_repo_.dart';

class UpdateProfileImageUseCase implements UseCase<ServerResponse, FormData> {
  UpdateProfileImageUseCase(this.repository);
  final IUserRepo repository;

  @override
  Future<Either<Failure, ServerResponse>> call(FormData params) async {
    return repository.updateProfileImage(params);
  }
}
