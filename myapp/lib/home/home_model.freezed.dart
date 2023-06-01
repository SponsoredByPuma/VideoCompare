// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeModel {
  bool get vertical => throw _privateConstructorUsedError;
  bool get lightmode => throw _privateConstructorUsedError;
  VideoPlayerController? get firstVideoController =>
      throw _privateConstructorUsedError;
  VideoPlayerController? get secondVideoController =>
      throw _privateConstructorUsedError;
  File? get firstVideo => throw _privateConstructorUsedError;
  File? get secondVideo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeModelCopyWith<HomeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeModelCopyWith<$Res> {
  factory $HomeModelCopyWith(HomeModel value, $Res Function(HomeModel) then) =
      _$HomeModelCopyWithImpl<$Res, HomeModel>;
  @useResult
  $Res call(
      {bool vertical,
      bool lightmode,
      VideoPlayerController? firstVideoController,
      VideoPlayerController? secondVideoController,
      File? firstVideo,
      File? secondVideo});
}

/// @nodoc
class _$HomeModelCopyWithImpl<$Res, $Val extends HomeModel>
    implements $HomeModelCopyWith<$Res> {
  _$HomeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vertical = null,
    Object? lightmode = null,
    Object? firstVideoController = freezed,
    Object? secondVideoController = freezed,
    Object? firstVideo = freezed,
    Object? secondVideo = freezed,
  }) {
    return _then(_value.copyWith(
      vertical: null == vertical
          ? _value.vertical
          : vertical // ignore: cast_nullable_to_non_nullable
              as bool,
      lightmode: null == lightmode
          ? _value.lightmode
          : lightmode // ignore: cast_nullable_to_non_nullable
              as bool,
      firstVideoController: freezed == firstVideoController
          ? _value.firstVideoController
          : firstVideoController // ignore: cast_nullable_to_non_nullable
              as VideoPlayerController?,
      secondVideoController: freezed == secondVideoController
          ? _value.secondVideoController
          : secondVideoController // ignore: cast_nullable_to_non_nullable
              as VideoPlayerController?,
      firstVideo: freezed == firstVideo
          ? _value.firstVideo
          : firstVideo // ignore: cast_nullable_to_non_nullable
              as File?,
      secondVideo: freezed == secondVideo
          ? _value.secondVideo
          : secondVideo // ignore: cast_nullable_to_non_nullable
              as File?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeModelCopyWith<$Res> implements $HomeModelCopyWith<$Res> {
  factory _$$_HomeModelCopyWith(
          _$_HomeModel value, $Res Function(_$_HomeModel) then) =
      __$$_HomeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool vertical,
      bool lightmode,
      VideoPlayerController? firstVideoController,
      VideoPlayerController? secondVideoController,
      File? firstVideo,
      File? secondVideo});
}

/// @nodoc
class __$$_HomeModelCopyWithImpl<$Res>
    extends _$HomeModelCopyWithImpl<$Res, _$_HomeModel>
    implements _$$_HomeModelCopyWith<$Res> {
  __$$_HomeModelCopyWithImpl(
      _$_HomeModel _value, $Res Function(_$_HomeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vertical = null,
    Object? lightmode = null,
    Object? firstVideoController = freezed,
    Object? secondVideoController = freezed,
    Object? firstVideo = freezed,
    Object? secondVideo = freezed,
  }) {
    return _then(_$_HomeModel(
      vertical: null == vertical
          ? _value.vertical
          : vertical // ignore: cast_nullable_to_non_nullable
              as bool,
      lightmode: null == lightmode
          ? _value.lightmode
          : lightmode // ignore: cast_nullable_to_non_nullable
              as bool,
      firstVideoController: freezed == firstVideoController
          ? _value.firstVideoController
          : firstVideoController // ignore: cast_nullable_to_non_nullable
              as VideoPlayerController?,
      secondVideoController: freezed == secondVideoController
          ? _value.secondVideoController
          : secondVideoController // ignore: cast_nullable_to_non_nullable
              as VideoPlayerController?,
      firstVideo: freezed == firstVideo
          ? _value.firstVideo
          : firstVideo // ignore: cast_nullable_to_non_nullable
              as File?,
      secondVideo: freezed == secondVideo
          ? _value.secondVideo
          : secondVideo // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$_HomeModel implements _HomeModel {
  const _$_HomeModel(
      {required this.vertical,
      required this.lightmode,
      required this.firstVideoController,
      required this.secondVideoController,
      required this.firstVideo,
      required this.secondVideo});

  @override
  final bool vertical;
  @override
  final bool lightmode;
  @override
  final VideoPlayerController? firstVideoController;
  @override
  final VideoPlayerController? secondVideoController;
  @override
  final File? firstVideo;
  @override
  final File? secondVideo;

  @override
  String toString() {
    return 'HomeModel(vertical: $vertical, lightmode: $lightmode, firstVideoController: $firstVideoController, secondVideoController: $secondVideoController, firstVideo: $firstVideo, secondVideo: $secondVideo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeModel &&
            (identical(other.vertical, vertical) ||
                other.vertical == vertical) &&
            (identical(other.lightmode, lightmode) ||
                other.lightmode == lightmode) &&
            (identical(other.firstVideoController, firstVideoController) ||
                other.firstVideoController == firstVideoController) &&
            (identical(other.secondVideoController, secondVideoController) ||
                other.secondVideoController == secondVideoController) &&
            (identical(other.firstVideo, firstVideo) ||
                other.firstVideo == firstVideo) &&
            (identical(other.secondVideo, secondVideo) ||
                other.secondVideo == secondVideo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, vertical, lightmode,
      firstVideoController, secondVideoController, firstVideo, secondVideo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeModelCopyWith<_$_HomeModel> get copyWith =>
      __$$_HomeModelCopyWithImpl<_$_HomeModel>(this, _$identity);
}

abstract class _HomeModel implements HomeModel {
  const factory _HomeModel(
      {required final bool vertical,
      required final bool lightmode,
      required final VideoPlayerController? firstVideoController,
      required final VideoPlayerController? secondVideoController,
      required final File? firstVideo,
      required final File? secondVideo}) = _$_HomeModel;

  @override
  bool get vertical;
  @override
  bool get lightmode;
  @override
  VideoPlayerController? get firstVideoController;
  @override
  VideoPlayerController? get secondVideoController;
  @override
  File? get firstVideo;
  @override
  File? get secondVideo;
  @override
  @JsonKey(ignore: true)
  _$$_HomeModelCopyWith<_$_HomeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
