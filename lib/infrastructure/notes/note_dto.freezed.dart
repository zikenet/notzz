// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NoteDto _$NoteDtoFromJson(Map<String, dynamic> json) {
  return _NoteDto.fromJson(json);
}

/// @nodoc
mixin _$NoteDto {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  int get color => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoteDtoCopyWith<NoteDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteDtoCopyWith<$Res> {
  factory $NoteDtoCopyWith(NoteDto value, $Res Function(NoteDto) then) =
      _$NoteDtoCopyWithImpl<$Res, NoteDto>;
  @useResult
  $Res call({String id, String title, String body, int color});
}

/// @nodoc
class _$NoteDtoCopyWithImpl<$Res, $Val extends NoteDto>
    implements $NoteDtoCopyWith<$Res> {
  _$NoteDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? body = null,
    Object? color = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NoteDtoImplCopyWith<$Res> implements $NoteDtoCopyWith<$Res> {
  factory _$$NoteDtoImplCopyWith(
          _$NoteDtoImpl value, $Res Function(_$NoteDtoImpl) then) =
      __$$NoteDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, String body, int color});
}

/// @nodoc
class __$$NoteDtoImplCopyWithImpl<$Res>
    extends _$NoteDtoCopyWithImpl<$Res, _$NoteDtoImpl>
    implements _$$NoteDtoImplCopyWith<$Res> {
  __$$NoteDtoImplCopyWithImpl(
      _$NoteDtoImpl _value, $Res Function(_$NoteDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? body = null,
    Object? color = null,
  }) {
    return _then(_$NoteDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NoteDtoImpl extends _NoteDto {
  const _$NoteDtoImpl(
      {required this.id,
      required this.title,
      required this.body,
      required this.color})
      : super._();

  factory _$NoteDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$NoteDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String body;
  @override
  final int color;

  @override
  String toString() {
    return 'NoteDto(id: $id, title: $title, body: $body, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, body, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteDtoImplCopyWith<_$NoteDtoImpl> get copyWith =>
      __$$NoteDtoImplCopyWithImpl<_$NoteDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NoteDtoImplToJson(
      this,
    );
  }
}

abstract class _NoteDto extends NoteDto {
  const factory _NoteDto(
      {required final String id,
      required final String title,
      required final String body,
      required final int color}) = _$NoteDtoImpl;
  const _NoteDto._() : super._();

  factory _NoteDto.fromJson(Map<String, dynamic> json) = _$NoteDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get body;
  @override
  int get color;
  @override
  @JsonKey(ignore: true)
  _$$NoteDtoImplCopyWith<_$NoteDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
