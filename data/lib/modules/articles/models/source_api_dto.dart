part of 'index/index.dart';

@freezed
abstract class SourceApiDto with _$SourceApiDto {
  const factory SourceApiDto({String? id, String? name}) = _SourceApiDto;

  factory SourceApiDto.fromJson(Map<String, dynamic> json) =>
      _$SourceApiDtoFromJson(json);
}
