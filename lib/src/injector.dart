import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'core/services/dio/dio_factory.dart';
import 'core/utils/constants.dart';

final GetIt injector = GetIt.instance;

Future<void> initializeDependencies() async {
  //Dio
  injector.registerSingleton<Dio>(DioFactory(kBaseUrl).create());
}
