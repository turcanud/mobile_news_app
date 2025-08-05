part of 'index/index.dart';

@freezed
abstract class SourceEntity with _$SourceEntity {
  const factory SourceEntity({String? id, String? name}) = _SourceEntity;
}
