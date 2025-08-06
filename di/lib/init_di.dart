import 'package:di/data_di.dart';
import 'package:di/domain_di.dart';

Future<void> initializeDependencies() async {
  await initializeDataDependencies();
  await initializeDomainDependencies();
}
