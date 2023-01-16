import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> setupServiceLocator() async {
  sl.registerLazySingleton<Dio>(
    () => Dio(
      BaseOptions(baseUrl: 'http://13.127.108.52:8081'),
    ),
  );
}
