import 'package:city_way/core/error/Failure.dart';
import 'package:city_way/features/Auth/data/repositories/datasource/local_data_source.dart';
import 'package:city_way/features/Auth/data/repositories/datasource/remote_data_source.dart';
import 'package:city_way/features/Auth/domain/entities/user.dart';
import 'package:city_way/features/Auth/domain/repositories/user_repository.dart';
import 'package:dartz/dartz.dart';

class UserRepositoryImp implements UserRepository{
  final RemoteDataSource remoteDataSource;
  final LocalDataSource localDataSource;

  UserRepositoryImp({required this.remoteDataSource, required this.localDataSource});

  @override
  Future<Either<Failure, User>> signIn(User user) {
    // TODO: implement signIn
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, User>> signUp(User user) {
    // TODO: implement signUp
    throw UnimplementedError();
  }

}