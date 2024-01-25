import 'package:city_way/features/Auth/data/repositories/datasource/local_data_source.dart';
import 'package:city_way/features/Auth/data/repositories/datasource/remote_data_source.dart';
import 'package:city_way/features/Auth/data/repositories/user_repository_implement.dart';
import 'package:city_way/features/Auth/domain/repositories/user_repository.dart';
import 'package:city_way/features/Auth/domain/usecases/signin_usecase.dart';
import 'package:city_way/features/Auth/domain/usecases/signup_usecase.dart';
import 'package:city_way/features/Auth/presentation/bloc/signin_bloc/signin_bloc.dart';
import 'package:city_way/features/Auth/presentation/bloc/signup_bloc/signup_bloc.dart';
import 'package:get_it/get_it.dart';

//Get It Global Instance
final sl = GetIt.instance;

//!Function To Initilized Get It Dependacy Injections
//And Register Classes
Future<void> init() async {

//!Features - Auth
//Bloc
  sl.registerFactory(() => SignupBloc(signUpUseCase: sl()));
  sl.registerFactory(() => SigninBloc(signInUseCase: sl()));


  //Usecases
  sl.registerLazySingleton(() => SignUpUseCase(userRepository: sl()));
  sl.registerLazySingleton(() => SignInUseCase(userRepository: sl()));

  // Reposetories
  sl.registerLazySingleton<UserRepository>(() => UserRepositoryImp(remoteDataSource :sl(), localDataSource: sl()));

  // Datasources
  sl.registerLazySingleton<RemoteDataSource>( () => RemoteDataSourceImpl());
  sl.registerLazySingleton<LocalDataSource>(() => LocalDataSourceImpl());

  // Remote
  // Local


  //! Core

  //! External

}
