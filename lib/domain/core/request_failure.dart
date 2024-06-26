import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_failure.freezed.dart';

@freezed
abstract class RequestFailure with _$RequestFailure {
  const factory RequestFailure.notFound() = _NotFound;
  const factory RequestFailure.unexpected() = _Unexpected;
  const factory RequestFailure.insufficentPermission() = _InsufficentPermission;
}
