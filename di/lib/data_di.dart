import 'data/api_service_injection_container.dart' as api_service;
import 'data/repository_injection_container.dart' as repository_service;

Future<void> initializeDataDependencies() async {
  api_service.apiServiceInjectionContainer();
  repository_service.repositoryInjectionContainer();
}
