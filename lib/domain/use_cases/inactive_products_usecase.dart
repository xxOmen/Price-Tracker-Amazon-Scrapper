import 'package:dartz/dartz.dart';
import 'package:savyor/data/models/active_product.dart';
import 'package:savyor/domain/interfaces/i_product_repo.dart';

import '../../../application/core/failure/failure.dart';
import '../../../application/core/usecases/usecase.dart';

class GetInActiveProductUseCase implements UseCase<ActiveProduct, NoParams> {
  GetInActiveProductUseCase(this.repository);

  final IProductRepo repository;

  @override
  Future<Either<Failure, ActiveProduct>> call(NoParams params) async {
    return repository.getInActiveProducts();
  }
}
