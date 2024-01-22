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



  // DataSources
  // Remote
  // Local


  //! Core

  //! External

}
