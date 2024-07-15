// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NoteFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Note> initialNoteOption) initialize,
    required TResult Function(String bodyStr) changeBody,
    required TResult Function(String titleStr) changeTitle,
    required TResult Function(Color cardColor) changeColor,
    required TResult Function() save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Note> initialNoteOption)? initialize,
    TResult? Function(String bodyStr)? changeBody,
    TResult? Function(String titleStr)? changeTitle,
    TResult? Function(Color cardColor)? changeColor,
    TResult? Function()? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Note> initialNoteOption)? initialize,
    TResult Function(String bodyStr)? changeBody,
    TResult Function(String titleStr)? changeTitle,
    TResult Function(Color cardColor)? changeColor,
    TResult Function()? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_ChangeBody value) changeBody,
    required TResult Function(_ChangeTitle value) changeTitle,
    required TResult Function(_ChangeColor value) changeColor,
    required TResult Function(_Save value) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_ChangeBody value)? changeBody,
    TResult? Function(_ChangeTitle value)? changeTitle,
    TResult? Function(_ChangeColor value)? changeColor,
    TResult? Function(_Save value)? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_ChangeBody value)? changeBody,
    TResult Function(_ChangeTitle value)? changeTitle,
    TResult Function(_ChangeColor value)? changeColor,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteFormEventCopyWith<$Res> {
  factory $NoteFormEventCopyWith(
          NoteFormEvent value, $Res Function(NoteFormEvent) then) =
      _$NoteFormEventCopyWithImpl<$Res, NoteFormEvent>;
}

/// @nodoc
class _$NoteFormEventCopyWithImpl<$Res, $Val extends NoteFormEvent>
    implements $NoteFormEventCopyWith<$Res> {
  _$NoteFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitializeImplCopyWith<$Res> {
  factory _$$InitializeImplCopyWith(
          _$InitializeImpl value, $Res Function(_$InitializeImpl) then) =
      __$$InitializeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Option<Note> initialNoteOption});
}

/// @nodoc
class __$$InitializeImplCopyWithImpl<$Res>
    extends _$NoteFormEventCopyWithImpl<$Res, _$InitializeImpl>
    implements _$$InitializeImplCopyWith<$Res> {
  __$$InitializeImplCopyWithImpl(
      _$InitializeImpl _value, $Res Function(_$InitializeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialNoteOption = null,
  }) {
    return _then(_$InitializeImpl(
      null == initialNoteOption
          ? _value.initialNoteOption
          : initialNoteOption // ignore: cast_nullable_to_non_nullable
              as Option<Note>,
    ));
  }
}

/// @nodoc

class _$InitializeImpl implements _Initialize {
  const _$InitializeImpl(this.initialNoteOption);

  @override
  final Option<Note> initialNoteOption;

  @override
  String toString() {
    return 'NoteFormEvent.initialize(initialNoteOption: $initialNoteOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializeImpl &&
            (identical(other.initialNoteOption, initialNoteOption) ||
                other.initialNoteOption == initialNoteOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, initialNoteOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializeImplCopyWith<_$InitializeImpl> get copyWith =>
      __$$InitializeImplCopyWithImpl<_$InitializeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Note> initialNoteOption) initialize,
    required TResult Function(String bodyStr) changeBody,
    required TResult Function(String titleStr) changeTitle,
    required TResult Function(Color cardColor) changeColor,
    required TResult Function() save,
  }) {
    return initialize(initialNoteOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Note> initialNoteOption)? initialize,
    TResult? Function(String bodyStr)? changeBody,
    TResult? Function(String titleStr)? changeTitle,
    TResult? Function(Color cardColor)? changeColor,
    TResult? Function()? save,
  }) {
    return initialize?.call(initialNoteOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Note> initialNoteOption)? initialize,
    TResult Function(String bodyStr)? changeBody,
    TResult Function(String titleStr)? changeTitle,
    TResult Function(Color cardColor)? changeColor,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(initialNoteOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_ChangeBody value) changeBody,
    required TResult Function(_ChangeTitle value) changeTitle,
    required TResult Function(_ChangeColor value) changeColor,
    required TResult Function(_Save value) save,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_ChangeBody value)? changeBody,
    TResult? Function(_ChangeTitle value)? changeTitle,
    TResult? Function(_ChangeColor value)? changeColor,
    TResult? Function(_Save value)? save,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_ChangeBody value)? changeBody,
    TResult Function(_ChangeTitle value)? changeTitle,
    TResult Function(_ChangeColor value)? changeColor,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _Initialize implements NoteFormEvent {
  const factory _Initialize(final Option<Note> initialNoteOption) =
      _$InitializeImpl;

  Option<Note> get initialNoteOption;
  @JsonKey(ignore: true)
  _$$InitializeImplCopyWith<_$InitializeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeBodyImplCopyWith<$Res> {
  factory _$$ChangeBodyImplCopyWith(
          _$ChangeBodyImpl value, $Res Function(_$ChangeBodyImpl) then) =
      __$$ChangeBodyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String bodyStr});
}

/// @nodoc
class __$$ChangeBodyImplCopyWithImpl<$Res>
    extends _$NoteFormEventCopyWithImpl<$Res, _$ChangeBodyImpl>
    implements _$$ChangeBodyImplCopyWith<$Res> {
  __$$ChangeBodyImplCopyWithImpl(
      _$ChangeBodyImpl _value, $Res Function(_$ChangeBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bodyStr = null,
  }) {
    return _then(_$ChangeBodyImpl(
      null == bodyStr
          ? _value.bodyStr
          : bodyStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeBodyImpl implements _ChangeBody {
  const _$ChangeBodyImpl(this.bodyStr);

  @override
  final String bodyStr;

  @override
  String toString() {
    return 'NoteFormEvent.changeBody(bodyStr: $bodyStr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeBodyImpl &&
            (identical(other.bodyStr, bodyStr) || other.bodyStr == bodyStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bodyStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeBodyImplCopyWith<_$ChangeBodyImpl> get copyWith =>
      __$$ChangeBodyImplCopyWithImpl<_$ChangeBodyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Note> initialNoteOption) initialize,
    required TResult Function(String bodyStr) changeBody,
    required TResult Function(String titleStr) changeTitle,
    required TResult Function(Color cardColor) changeColor,
    required TResult Function() save,
  }) {
    return changeBody(bodyStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Note> initialNoteOption)? initialize,
    TResult? Function(String bodyStr)? changeBody,
    TResult? Function(String titleStr)? changeTitle,
    TResult? Function(Color cardColor)? changeColor,
    TResult? Function()? save,
  }) {
    return changeBody?.call(bodyStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Note> initialNoteOption)? initialize,
    TResult Function(String bodyStr)? changeBody,
    TResult Function(String titleStr)? changeTitle,
    TResult Function(Color cardColor)? changeColor,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (changeBody != null) {
      return changeBody(bodyStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_ChangeBody value) changeBody,
    required TResult Function(_ChangeTitle value) changeTitle,
    required TResult Function(_ChangeColor value) changeColor,
    required TResult Function(_Save value) save,
  }) {
    return changeBody(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_ChangeBody value)? changeBody,
    TResult? Function(_ChangeTitle value)? changeTitle,
    TResult? Function(_ChangeColor value)? changeColor,
    TResult? Function(_Save value)? save,
  }) {
    return changeBody?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_ChangeBody value)? changeBody,
    TResult Function(_ChangeTitle value)? changeTitle,
    TResult Function(_ChangeColor value)? changeColor,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (changeBody != null) {
      return changeBody(this);
    }
    return orElse();
  }
}

abstract class _ChangeBody implements NoteFormEvent {
  const factory _ChangeBody(final String bodyStr) = _$ChangeBodyImpl;

  String get bodyStr;
  @JsonKey(ignore: true)
  _$$ChangeBodyImplCopyWith<_$ChangeBodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeTitleImplCopyWith<$Res> {
  factory _$$ChangeTitleImplCopyWith(
          _$ChangeTitleImpl value, $Res Function(_$ChangeTitleImpl) then) =
      __$$ChangeTitleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String titleStr});
}

/// @nodoc
class __$$ChangeTitleImplCopyWithImpl<$Res>
    extends _$NoteFormEventCopyWithImpl<$Res, _$ChangeTitleImpl>
    implements _$$ChangeTitleImplCopyWith<$Res> {
  __$$ChangeTitleImplCopyWithImpl(
      _$ChangeTitleImpl _value, $Res Function(_$ChangeTitleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? titleStr = null,
  }) {
    return _then(_$ChangeTitleImpl(
      null == titleStr
          ? _value.titleStr
          : titleStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeTitleImpl implements _ChangeTitle {
  const _$ChangeTitleImpl(this.titleStr);

  @override
  final String titleStr;

  @override
  String toString() {
    return 'NoteFormEvent.changeTitle(titleStr: $titleStr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeTitleImpl &&
            (identical(other.titleStr, titleStr) ||
                other.titleStr == titleStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, titleStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeTitleImplCopyWith<_$ChangeTitleImpl> get copyWith =>
      __$$ChangeTitleImplCopyWithImpl<_$ChangeTitleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Note> initialNoteOption) initialize,
    required TResult Function(String bodyStr) changeBody,
    required TResult Function(String titleStr) changeTitle,
    required TResult Function(Color cardColor) changeColor,
    required TResult Function() save,
  }) {
    return changeTitle(titleStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Note> initialNoteOption)? initialize,
    TResult? Function(String bodyStr)? changeBody,
    TResult? Function(String titleStr)? changeTitle,
    TResult? Function(Color cardColor)? changeColor,
    TResult? Function()? save,
  }) {
    return changeTitle?.call(titleStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Note> initialNoteOption)? initialize,
    TResult Function(String bodyStr)? changeBody,
    TResult Function(String titleStr)? changeTitle,
    TResult Function(Color cardColor)? changeColor,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (changeTitle != null) {
      return changeTitle(titleStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_ChangeBody value) changeBody,
    required TResult Function(_ChangeTitle value) changeTitle,
    required TResult Function(_ChangeColor value) changeColor,
    required TResult Function(_Save value) save,
  }) {
    return changeTitle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_ChangeBody value)? changeBody,
    TResult? Function(_ChangeTitle value)? changeTitle,
    TResult? Function(_ChangeColor value)? changeColor,
    TResult? Function(_Save value)? save,
  }) {
    return changeTitle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_ChangeBody value)? changeBody,
    TResult Function(_ChangeTitle value)? changeTitle,
    TResult Function(_ChangeColor value)? changeColor,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (changeTitle != null) {
      return changeTitle(this);
    }
    return orElse();
  }
}

abstract class _ChangeTitle implements NoteFormEvent {
  const factory _ChangeTitle(final String titleStr) = _$ChangeTitleImpl;

  String get titleStr;
  @JsonKey(ignore: true)
  _$$ChangeTitleImplCopyWith<_$ChangeTitleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeColorImplCopyWith<$Res> {
  factory _$$ChangeColorImplCopyWith(
          _$ChangeColorImpl value, $Res Function(_$ChangeColorImpl) then) =
      __$$ChangeColorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Color cardColor});
}

/// @nodoc
class __$$ChangeColorImplCopyWithImpl<$Res>
    extends _$NoteFormEventCopyWithImpl<$Res, _$ChangeColorImpl>
    implements _$$ChangeColorImplCopyWith<$Res> {
  __$$ChangeColorImplCopyWithImpl(
      _$ChangeColorImpl _value, $Res Function(_$ChangeColorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardColor = null,
  }) {
    return _then(_$ChangeColorImpl(
      null == cardColor
          ? _value.cardColor
          : cardColor // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$ChangeColorImpl implements _ChangeColor {
  const _$ChangeColorImpl(this.cardColor);

  @override
  final Color cardColor;

  @override
  String toString() {
    return 'NoteFormEvent.changeColor(cardColor: $cardColor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeColorImpl &&
            (identical(other.cardColor, cardColor) ||
                other.cardColor == cardColor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cardColor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeColorImplCopyWith<_$ChangeColorImpl> get copyWith =>
      __$$ChangeColorImplCopyWithImpl<_$ChangeColorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Note> initialNoteOption) initialize,
    required TResult Function(String bodyStr) changeBody,
    required TResult Function(String titleStr) changeTitle,
    required TResult Function(Color cardColor) changeColor,
    required TResult Function() save,
  }) {
    return changeColor(cardColor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Note> initialNoteOption)? initialize,
    TResult? Function(String bodyStr)? changeBody,
    TResult? Function(String titleStr)? changeTitle,
    TResult? Function(Color cardColor)? changeColor,
    TResult? Function()? save,
  }) {
    return changeColor?.call(cardColor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Note> initialNoteOption)? initialize,
    TResult Function(String bodyStr)? changeBody,
    TResult Function(String titleStr)? changeTitle,
    TResult Function(Color cardColor)? changeColor,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (changeColor != null) {
      return changeColor(cardColor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_ChangeBody value) changeBody,
    required TResult Function(_ChangeTitle value) changeTitle,
    required TResult Function(_ChangeColor value) changeColor,
    required TResult Function(_Save value) save,
  }) {
    return changeColor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_ChangeBody value)? changeBody,
    TResult? Function(_ChangeTitle value)? changeTitle,
    TResult? Function(_ChangeColor value)? changeColor,
    TResult? Function(_Save value)? save,
  }) {
    return changeColor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_ChangeBody value)? changeBody,
    TResult Function(_ChangeTitle value)? changeTitle,
    TResult Function(_ChangeColor value)? changeColor,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (changeColor != null) {
      return changeColor(this);
    }
    return orElse();
  }
}

abstract class _ChangeColor implements NoteFormEvent {
  const factory _ChangeColor(final Color cardColor) = _$ChangeColorImpl;

  Color get cardColor;
  @JsonKey(ignore: true)
  _$$ChangeColorImplCopyWith<_$ChangeColorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveImplCopyWith<$Res> {
  factory _$$SaveImplCopyWith(
          _$SaveImpl value, $Res Function(_$SaveImpl) then) =
      __$$SaveImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SaveImplCopyWithImpl<$Res>
    extends _$NoteFormEventCopyWithImpl<$Res, _$SaveImpl>
    implements _$$SaveImplCopyWith<$Res> {
  __$$SaveImplCopyWithImpl(_$SaveImpl _value, $Res Function(_$SaveImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SaveImpl implements _Save {
  const _$SaveImpl();

  @override
  String toString() {
    return 'NoteFormEvent.save()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SaveImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Note> initialNoteOption) initialize,
    required TResult Function(String bodyStr) changeBody,
    required TResult Function(String titleStr) changeTitle,
    required TResult Function(Color cardColor) changeColor,
    required TResult Function() save,
  }) {
    return save();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Note> initialNoteOption)? initialize,
    TResult? Function(String bodyStr)? changeBody,
    TResult? Function(String titleStr)? changeTitle,
    TResult? Function(Color cardColor)? changeColor,
    TResult? Function()? save,
  }) {
    return save?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Note> initialNoteOption)? initialize,
    TResult Function(String bodyStr)? changeBody,
    TResult Function(String titleStr)? changeTitle,
    TResult Function(Color cardColor)? changeColor,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_ChangeBody value) changeBody,
    required TResult Function(_ChangeTitle value) changeTitle,
    required TResult Function(_ChangeColor value) changeColor,
    required TResult Function(_Save value) save,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_ChangeBody value)? changeBody,
    TResult? Function(_ChangeTitle value)? changeTitle,
    TResult? Function(_ChangeColor value)? changeColor,
    TResult? Function(_Save value)? save,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_ChangeBody value)? changeBody,
    TResult Function(_ChangeTitle value)? changeTitle,
    TResult Function(_ChangeColor value)? changeColor,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class _Save implements NoteFormEvent {
  const factory _Save() = _$SaveImpl;
}

/// @nodoc
mixin _$NoteFormState {
  Note get note => throw _privateConstructorUsedError;
  bool get displayError => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  Option<Either<RequestFailure, Unit>> get status =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NoteFormStateCopyWith<NoteFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteFormStateCopyWith<$Res> {
  factory $NoteFormStateCopyWith(
          NoteFormState value, $Res Function(NoteFormState) then) =
      _$NoteFormStateCopyWithImpl<$Res, NoteFormState>;
  @useResult
  $Res call(
      {Note note,
      bool displayError,
      bool isSaving,
      bool isEditing,
      Option<Either<RequestFailure, Unit>> status});

  $NoteCopyWith<$Res> get note;
}

/// @nodoc
class _$NoteFormStateCopyWithImpl<$Res, $Val extends NoteFormState>
    implements $NoteFormStateCopyWith<$Res> {
  _$NoteFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? note = null,
    Object? displayError = null,
    Object? isSaving = null,
    Object? isEditing = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Note,
      displayError: null == displayError
          ? _value.displayError
          : displayError // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: null == isEditing
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Option<Either<RequestFailure, Unit>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NoteCopyWith<$Res> get note {
    return $NoteCopyWith<$Res>(_value.note, (value) {
      return _then(_value.copyWith(note: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NoteFormStateImplCopyWith<$Res>
    implements $NoteFormStateCopyWith<$Res> {
  factory _$$NoteFormStateImplCopyWith(
          _$NoteFormStateImpl value, $Res Function(_$NoteFormStateImpl) then) =
      __$$NoteFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Note note,
      bool displayError,
      bool isSaving,
      bool isEditing,
      Option<Either<RequestFailure, Unit>> status});

  @override
  $NoteCopyWith<$Res> get note;
}

/// @nodoc
class __$$NoteFormStateImplCopyWithImpl<$Res>
    extends _$NoteFormStateCopyWithImpl<$Res, _$NoteFormStateImpl>
    implements _$$NoteFormStateImplCopyWith<$Res> {
  __$$NoteFormStateImplCopyWithImpl(
      _$NoteFormStateImpl _value, $Res Function(_$NoteFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? note = null,
    Object? displayError = null,
    Object? isSaving = null,
    Object? isEditing = null,
    Object? status = null,
  }) {
    return _then(_$NoteFormStateImpl(
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Note,
      displayError: null == displayError
          ? _value.displayError
          : displayError // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: null == isEditing
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Option<Either<RequestFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$NoteFormStateImpl implements _NoteFormState {
  const _$NoteFormStateImpl(
      {required this.note,
      required this.displayError,
      required this.isSaving,
      required this.isEditing,
      required this.status});

  @override
  final Note note;
  @override
  final bool displayError;
  @override
  final bool isSaving;
  @override
  final bool isEditing;
  @override
  final Option<Either<RequestFailure, Unit>> status;

  @override
  String toString() {
    return 'NoteFormState(note: $note, displayError: $displayError, isSaving: $isSaving, isEditing: $isEditing, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteFormStateImpl &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.displayError, displayError) ||
                other.displayError == displayError) &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving) &&
            (identical(other.isEditing, isEditing) ||
                other.isEditing == isEditing) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, note, displayError, isSaving, isEditing, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteFormStateImplCopyWith<_$NoteFormStateImpl> get copyWith =>
      __$$NoteFormStateImplCopyWithImpl<_$NoteFormStateImpl>(this, _$identity);
}

abstract class _NoteFormState implements NoteFormState {
  const factory _NoteFormState(
          {required final Note note,
          required final bool displayError,
          required final bool isSaving,
          required final bool isEditing,
          required final Option<Either<RequestFailure, Unit>> status}) =
      _$NoteFormStateImpl;

  @override
  Note get note;
  @override
  bool get displayError;
  @override
  bool get isSaving;
  @override
  bool get isEditing;
  @override
  Option<Either<RequestFailure, Unit>> get status;
  @override
  @JsonKey(ignore: true)
  _$$NoteFormStateImplCopyWith<_$NoteFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
