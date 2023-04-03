// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'link_payment_method_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LinkPaymentMethodFailure {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unexpected,
    required TResult Function(String message) serverError,
    required TResult Function(String message) withMessage,
    required TResult Function(String message) userCannotPayWithGoogle,
    required TResult Function(String message) userCannotPayWithApple,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? unexpected,
    TResult? Function(String message)? serverError,
    TResult? Function(String message)? withMessage,
    TResult? Function(String message)? userCannotPayWithGoogle,
    TResult? Function(String message)? userCannotPayWithApple,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unexpected,
    TResult Function(String message)? serverError,
    TResult Function(String message)? withMessage,
    TResult Function(String message)? userCannotPayWithGoogle,
    TResult Function(String message)? userCannotPayWithApple,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_WithMessage value) withMessage,
    required TResult Function(_UserCannotPayWithGoogle value)
        userCannotPayWithGoogle,
    required TResult Function(_UserCannotPayWithApple value)
        userCannotPayWithApple,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_WithMessage value)? withMessage,
    TResult? Function(_UserCannotPayWithGoogle value)? userCannotPayWithGoogle,
    TResult? Function(_UserCannotPayWithApple value)? userCannotPayWithApple,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_WithMessage value)? withMessage,
    TResult Function(_UserCannotPayWithGoogle value)? userCannotPayWithGoogle,
    TResult Function(_UserCannotPayWithApple value)? userCannotPayWithApple,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LinkPaymentMethodFailureCopyWith<LinkPaymentMethodFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkPaymentMethodFailureCopyWith<$Res> {
  factory $LinkPaymentMethodFailureCopyWith(LinkPaymentMethodFailure value,
          $Res Function(LinkPaymentMethodFailure) then) =
      _$LinkPaymentMethodFailureCopyWithImpl<$Res, LinkPaymentMethodFailure>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$LinkPaymentMethodFailureCopyWithImpl<$Res,
        $Val extends LinkPaymentMethodFailure>
    implements $LinkPaymentMethodFailureCopyWith<$Res> {
  _$LinkPaymentMethodFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UnexpectedCopyWith<$Res>
    implements $LinkPaymentMethodFailureCopyWith<$Res> {
  factory _$$_UnexpectedCopyWith(
          _$_Unexpected value, $Res Function(_$_Unexpected) then) =
      __$$_UnexpectedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_UnexpectedCopyWithImpl<$Res>
    extends _$LinkPaymentMethodFailureCopyWithImpl<$Res, _$_Unexpected>
    implements _$$_UnexpectedCopyWith<$Res> {
  __$$_UnexpectedCopyWithImpl(
      _$_Unexpected _value, $Res Function(_$_Unexpected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_Unexpected(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Unexpected implements _Unexpected {
  const _$_Unexpected(
      {this.message = 'Something went wrong, please try again.'});

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'LinkPaymentMethodFailure.unexpected(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Unexpected &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UnexpectedCopyWith<_$_Unexpected> get copyWith =>
      __$$_UnexpectedCopyWithImpl<_$_Unexpected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unexpected,
    required TResult Function(String message) serverError,
    required TResult Function(String message) withMessage,
    required TResult Function(String message) userCannotPayWithGoogle,
    required TResult Function(String message) userCannotPayWithApple,
  }) {
    return unexpected(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? unexpected,
    TResult? Function(String message)? serverError,
    TResult? Function(String message)? withMessage,
    TResult? Function(String message)? userCannotPayWithGoogle,
    TResult? Function(String message)? userCannotPayWithApple,
  }) {
    return unexpected?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unexpected,
    TResult Function(String message)? serverError,
    TResult Function(String message)? withMessage,
    TResult Function(String message)? userCannotPayWithGoogle,
    TResult Function(String message)? userCannotPayWithApple,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_WithMessage value) withMessage,
    required TResult Function(_UserCannotPayWithGoogle value)
        userCannotPayWithGoogle,
    required TResult Function(_UserCannotPayWithApple value)
        userCannotPayWithApple,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_WithMessage value)? withMessage,
    TResult? Function(_UserCannotPayWithGoogle value)? userCannotPayWithGoogle,
    TResult? Function(_UserCannotPayWithApple value)? userCannotPayWithApple,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_WithMessage value)? withMessage,
    TResult Function(_UserCannotPayWithGoogle value)? userCannotPayWithGoogle,
    TResult Function(_UserCannotPayWithApple value)? userCannotPayWithApple,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _Unexpected implements LinkPaymentMethodFailure {
  const factory _Unexpected({final String message}) = _$_Unexpected;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_UnexpectedCopyWith<_$_Unexpected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ServerErrorCopyWith<$Res>
    implements $LinkPaymentMethodFailureCopyWith<$Res> {
  factory _$$_ServerErrorCopyWith(
          _$_ServerError value, $Res Function(_$_ServerError) then) =
      __$$_ServerErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_ServerErrorCopyWithImpl<$Res>
    extends _$LinkPaymentMethodFailureCopyWithImpl<$Res, _$_ServerError>
    implements _$$_ServerErrorCopyWith<$Res> {
  __$$_ServerErrorCopyWithImpl(
      _$_ServerError _value, $Res Function(_$_ServerError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_ServerError(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ServerError implements _ServerError {
  const _$_ServerError({this.message = 'An unknown exception occurred.'});

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'LinkPaymentMethodFailure.serverError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServerError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServerErrorCopyWith<_$_ServerError> get copyWith =>
      __$$_ServerErrorCopyWithImpl<_$_ServerError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unexpected,
    required TResult Function(String message) serverError,
    required TResult Function(String message) withMessage,
    required TResult Function(String message) userCannotPayWithGoogle,
    required TResult Function(String message) userCannotPayWithApple,
  }) {
    return serverError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? unexpected,
    TResult? Function(String message)? serverError,
    TResult? Function(String message)? withMessage,
    TResult? Function(String message)? userCannotPayWithGoogle,
    TResult? Function(String message)? userCannotPayWithApple,
  }) {
    return serverError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unexpected,
    TResult Function(String message)? serverError,
    TResult Function(String message)? withMessage,
    TResult Function(String message)? userCannotPayWithGoogle,
    TResult Function(String message)? userCannotPayWithApple,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_WithMessage value) withMessage,
    required TResult Function(_UserCannotPayWithGoogle value)
        userCannotPayWithGoogle,
    required TResult Function(_UserCannotPayWithApple value)
        userCannotPayWithApple,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_WithMessage value)? withMessage,
    TResult? Function(_UserCannotPayWithGoogle value)? userCannotPayWithGoogle,
    TResult? Function(_UserCannotPayWithApple value)? userCannotPayWithApple,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_WithMessage value)? withMessage,
    TResult Function(_UserCannotPayWithGoogle value)? userCannotPayWithGoogle,
    TResult Function(_UserCannotPayWithApple value)? userCannotPayWithApple,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements LinkPaymentMethodFailure {
  const factory _ServerError({final String message}) = _$_ServerError;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_ServerErrorCopyWith<_$_ServerError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WithMessageCopyWith<$Res>
    implements $LinkPaymentMethodFailureCopyWith<$Res> {
  factory _$$_WithMessageCopyWith(
          _$_WithMessage value, $Res Function(_$_WithMessage) then) =
      __$$_WithMessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_WithMessageCopyWithImpl<$Res>
    extends _$LinkPaymentMethodFailureCopyWithImpl<$Res, _$_WithMessage>
    implements _$$_WithMessageCopyWith<$Res> {
  __$$_WithMessageCopyWithImpl(
      _$_WithMessage _value, $Res Function(_$_WithMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_WithMessage(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_WithMessage implements _WithMessage {
  const _$_WithMessage(
      {this.message = 'Something went wrong, please try again'});

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'LinkPaymentMethodFailure.withMessage(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WithMessage &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WithMessageCopyWith<_$_WithMessage> get copyWith =>
      __$$_WithMessageCopyWithImpl<_$_WithMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unexpected,
    required TResult Function(String message) serverError,
    required TResult Function(String message) withMessage,
    required TResult Function(String message) userCannotPayWithGoogle,
    required TResult Function(String message) userCannotPayWithApple,
  }) {
    return withMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? unexpected,
    TResult? Function(String message)? serverError,
    TResult? Function(String message)? withMessage,
    TResult? Function(String message)? userCannotPayWithGoogle,
    TResult? Function(String message)? userCannotPayWithApple,
  }) {
    return withMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unexpected,
    TResult Function(String message)? serverError,
    TResult Function(String message)? withMessage,
    TResult Function(String message)? userCannotPayWithGoogle,
    TResult Function(String message)? userCannotPayWithApple,
    required TResult orElse(),
  }) {
    if (withMessage != null) {
      return withMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_WithMessage value) withMessage,
    required TResult Function(_UserCannotPayWithGoogle value)
        userCannotPayWithGoogle,
    required TResult Function(_UserCannotPayWithApple value)
        userCannotPayWithApple,
  }) {
    return withMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_WithMessage value)? withMessage,
    TResult? Function(_UserCannotPayWithGoogle value)? userCannotPayWithGoogle,
    TResult? Function(_UserCannotPayWithApple value)? userCannotPayWithApple,
  }) {
    return withMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_WithMessage value)? withMessage,
    TResult Function(_UserCannotPayWithGoogle value)? userCannotPayWithGoogle,
    TResult Function(_UserCannotPayWithApple value)? userCannotPayWithApple,
    required TResult orElse(),
  }) {
    if (withMessage != null) {
      return withMessage(this);
    }
    return orElse();
  }
}

abstract class _WithMessage implements LinkPaymentMethodFailure {
  const factory _WithMessage({final String message}) = _$_WithMessage;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_WithMessageCopyWith<_$_WithMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UserCannotPayWithGoogleCopyWith<$Res>
    implements $LinkPaymentMethodFailureCopyWith<$Res> {
  factory _$$_UserCannotPayWithGoogleCopyWith(_$_UserCannotPayWithGoogle value,
          $Res Function(_$_UserCannotPayWithGoogle) then) =
      __$$_UserCannotPayWithGoogleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_UserCannotPayWithGoogleCopyWithImpl<$Res>
    extends _$LinkPaymentMethodFailureCopyWithImpl<$Res,
        _$_UserCannotPayWithGoogle>
    implements _$$_UserCannotPayWithGoogleCopyWith<$Res> {
  __$$_UserCannotPayWithGoogleCopyWithImpl(_$_UserCannotPayWithGoogle _value,
      $Res Function(_$_UserCannotPayWithGoogle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_UserCannotPayWithGoogle(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UserCannotPayWithGoogle implements _UserCannotPayWithGoogle {
  const _$_UserCannotPayWithGoogle(
      {this.message = 'You can\'t process google pay'});

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'LinkPaymentMethodFailure.userCannotPayWithGoogle(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserCannotPayWithGoogle &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCannotPayWithGoogleCopyWith<_$_UserCannotPayWithGoogle>
      get copyWith =>
          __$$_UserCannotPayWithGoogleCopyWithImpl<_$_UserCannotPayWithGoogle>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unexpected,
    required TResult Function(String message) serverError,
    required TResult Function(String message) withMessage,
    required TResult Function(String message) userCannotPayWithGoogle,
    required TResult Function(String message) userCannotPayWithApple,
  }) {
    return userCannotPayWithGoogle(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? unexpected,
    TResult? Function(String message)? serverError,
    TResult? Function(String message)? withMessage,
    TResult? Function(String message)? userCannotPayWithGoogle,
    TResult? Function(String message)? userCannotPayWithApple,
  }) {
    return userCannotPayWithGoogle?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unexpected,
    TResult Function(String message)? serverError,
    TResult Function(String message)? withMessage,
    TResult Function(String message)? userCannotPayWithGoogle,
    TResult Function(String message)? userCannotPayWithApple,
    required TResult orElse(),
  }) {
    if (userCannotPayWithGoogle != null) {
      return userCannotPayWithGoogle(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_WithMessage value) withMessage,
    required TResult Function(_UserCannotPayWithGoogle value)
        userCannotPayWithGoogle,
    required TResult Function(_UserCannotPayWithApple value)
        userCannotPayWithApple,
  }) {
    return userCannotPayWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_WithMessage value)? withMessage,
    TResult? Function(_UserCannotPayWithGoogle value)? userCannotPayWithGoogle,
    TResult? Function(_UserCannotPayWithApple value)? userCannotPayWithApple,
  }) {
    return userCannotPayWithGoogle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_WithMessage value)? withMessage,
    TResult Function(_UserCannotPayWithGoogle value)? userCannotPayWithGoogle,
    TResult Function(_UserCannotPayWithApple value)? userCannotPayWithApple,
    required TResult orElse(),
  }) {
    if (userCannotPayWithGoogle != null) {
      return userCannotPayWithGoogle(this);
    }
    return orElse();
  }
}

abstract class _UserCannotPayWithGoogle implements LinkPaymentMethodFailure {
  const factory _UserCannotPayWithGoogle({final String message}) =
      _$_UserCannotPayWithGoogle;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_UserCannotPayWithGoogleCopyWith<_$_UserCannotPayWithGoogle>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UserCannotPayWithAppleCopyWith<$Res>
    implements $LinkPaymentMethodFailureCopyWith<$Res> {
  factory _$$_UserCannotPayWithAppleCopyWith(_$_UserCannotPayWithApple value,
          $Res Function(_$_UserCannotPayWithApple) then) =
      __$$_UserCannotPayWithAppleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_UserCannotPayWithAppleCopyWithImpl<$Res>
    extends _$LinkPaymentMethodFailureCopyWithImpl<$Res,
        _$_UserCannotPayWithApple>
    implements _$$_UserCannotPayWithAppleCopyWith<$Res> {
  __$$_UserCannotPayWithAppleCopyWithImpl(_$_UserCannotPayWithApple _value,
      $Res Function(_$_UserCannotPayWithApple) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_UserCannotPayWithApple(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UserCannotPayWithApple implements _UserCannotPayWithApple {
  const _$_UserCannotPayWithApple(
      {this.message = 'You can\'t process apple pay'});

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'LinkPaymentMethodFailure.userCannotPayWithApple(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserCannotPayWithApple &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCannotPayWithAppleCopyWith<_$_UserCannotPayWithApple> get copyWith =>
      __$$_UserCannotPayWithAppleCopyWithImpl<_$_UserCannotPayWithApple>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unexpected,
    required TResult Function(String message) serverError,
    required TResult Function(String message) withMessage,
    required TResult Function(String message) userCannotPayWithGoogle,
    required TResult Function(String message) userCannotPayWithApple,
  }) {
    return userCannotPayWithApple(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? unexpected,
    TResult? Function(String message)? serverError,
    TResult? Function(String message)? withMessage,
    TResult? Function(String message)? userCannotPayWithGoogle,
    TResult? Function(String message)? userCannotPayWithApple,
  }) {
    return userCannotPayWithApple?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unexpected,
    TResult Function(String message)? serverError,
    TResult Function(String message)? withMessage,
    TResult Function(String message)? userCannotPayWithGoogle,
    TResult Function(String message)? userCannotPayWithApple,
    required TResult orElse(),
  }) {
    if (userCannotPayWithApple != null) {
      return userCannotPayWithApple(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_WithMessage value) withMessage,
    required TResult Function(_UserCannotPayWithGoogle value)
        userCannotPayWithGoogle,
    required TResult Function(_UserCannotPayWithApple value)
        userCannotPayWithApple,
  }) {
    return userCannotPayWithApple(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_WithMessage value)? withMessage,
    TResult? Function(_UserCannotPayWithGoogle value)? userCannotPayWithGoogle,
    TResult? Function(_UserCannotPayWithApple value)? userCannotPayWithApple,
  }) {
    return userCannotPayWithApple?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_WithMessage value)? withMessage,
    TResult Function(_UserCannotPayWithGoogle value)? userCannotPayWithGoogle,
    TResult Function(_UserCannotPayWithApple value)? userCannotPayWithApple,
    required TResult orElse(),
  }) {
    if (userCannotPayWithApple != null) {
      return userCannotPayWithApple(this);
    }
    return orElse();
  }
}

abstract class _UserCannotPayWithApple implements LinkPaymentMethodFailure {
  const factory _UserCannotPayWithApple({final String message}) =
      _$_UserCannotPayWithApple;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_UserCannotPayWithAppleCopyWith<_$_UserCannotPayWithApple> get copyWith =>
      throw _privateConstructorUsedError;
}
