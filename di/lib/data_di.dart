import 'package:get_it/get_it.dart';

import 'data/api_service_injection_container.dart' as api_service;
import 'data/repository_injection_container.dart' as repository_service;

Future<void> initializeDataDependencies(GetIt serviceLocator) async {
  api_service.apiServiceInjectionContainer(serviceLocator);
  repository_service.repositoryInjectionContainer(serviceLocator);
}
