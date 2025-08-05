import 'package:get_it/get_it.dart';

import 'domain/usecase_injection_container.dart' as usecase_service;

Future<void> initializeDomainDependencies(GetIt serviceLocator) async {
  usecase_service.usecaseInjectionContainer(serviceLocator);
}
