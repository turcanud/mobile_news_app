import 'package:di/data_di.dart';
import 'package:di/domain_di.dart';
import 'package:di/presentation_di.dart';
import 'package:get_it/get_it.dart';

final serviceLocator = GetIt.instance;

Future<void> initializeDependencies() async {
  await initializeDataDependencies(serviceLocator);
  await initializeDomainDependencies(serviceLocator);
  await initializePresentationDependencies(serviceLocator);
}
