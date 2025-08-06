import 'domain/usecase_injection_container.dart' as usecase_service;

Future<void> initializeDomainDependencies() async {
  usecase_service.usecaseInjectionContainer();
}
