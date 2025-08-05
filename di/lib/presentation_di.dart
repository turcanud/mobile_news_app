import 'package:get_it/get_it.dart';
import 'package:di/presentation/state_injection_container.dart'
    as state_service;

Future<void> initializePresentationDependencies(GetIt serviceLocator) async {
  state_service.stateInjectionContainer(serviceLocator);
}
