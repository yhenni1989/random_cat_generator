import 'package:dartz/dartz.dart';

import '../../../core/error/failures.dart';
import '../../../core/usecases/usecase.dart';
import '../contracts/random_cat_contract.dart';
import '../entities/random_cat.dart';

class GetRandomCat implements UseCase<RandomCat> {
  final RandomCatContract contract;

  GetRandomCat(this.contract);

  @override
  Future<Either<Failure, RandomCat>> call() async {
    return await contract.getRandomCat();
  }
}
