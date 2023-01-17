import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:socialv/auth/auth_service.dart';
import 'package:socialv/auth/cubit/auth_cubit.dart';

final sl = GetIt.instance;

Future<void> setupServiceLocator() async {
  sl.registerLazySingleton<Dio>(
    () => Dio(
      BaseOptions(baseUrl: 'http://13.127.108.52:8081'),
    ),
  );
  sl.registerLazySingleton<AuthService>(
    () => AuthService(sl()),
  );
  sl.registerLazySingleton<AuthCubit>(
    () => AuthCubit(sl()),
  );
}
