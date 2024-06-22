// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'time_series_intraday_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TimeSeriesIntradayModel _$TimeSeriesIntradayModelFromJson(
    Map<String, dynamic> json) {
  return _TimeSeriesIntradayModel.fromJson(json);
}

/// @nodoc
mixin _$TimeSeriesIntradayModel {
  @JsonKey(name: 'Meta Data')
  MetaDataModel get metadata => throw _privateConstructorUsedError;
  @JsonKey(name: 'Time Series (60min)')
  Map<String, TimeSeries60Min> get timeSeries60Min =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimeSeriesIntradayModelCopyWith<TimeSeriesIntradayModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeSeriesIntradayModelCopyWith<$Res> {
  factory $TimeSeriesIntradayModelCopyWith(TimeSeriesIntradayModel value,
          $Res Function(TimeSeriesIntradayModel) then) =
      _$TimeSeriesIntradayModelCopyWithImpl<$Res, TimeSeriesIntradayModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Meta Data') MetaDataModel metadata,
      @JsonKey(name: 'Time Series (60min)')
      Map<String, TimeSeries60Min> timeSeries60Min});

  $MetaDataModelCopyWith<$Res> get metadata;
}

/// @nodoc
class _$TimeSeriesIntradayModelCopyWithImpl<$Res,
        $Val extends TimeSeriesIntradayModel>
    implements $TimeSeriesIntradayModelCopyWith<$Res> {
  _$TimeSeriesIntradayModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metadata = null,
    Object? timeSeries60Min = null,
  }) {
    return _then(_value.copyWith(
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as MetaDataModel,
      timeSeries60Min: null == timeSeries60Min
          ? _value.timeSeries60Min
          : timeSeries60Min // ignore: cast_nullable_to_non_nullable
              as Map<String, TimeSeries60Min>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MetaDataModelCopyWith<$Res> get metadata {
    return $MetaDataModelCopyWith<$Res>(_value.metadata, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TimeSeriesIntradayModelImplCopyWith<$Res>
    implements $TimeSeriesIntradayModelCopyWith<$Res> {
  factory _$$TimeSeriesIntradayModelImplCopyWith(
          _$TimeSeriesIntradayModelImpl value,
          $Res Function(_$TimeSeriesIntradayModelImpl) then) =
      __$$TimeSeriesIntradayModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Meta Data') MetaDataModel metadata,
      @JsonKey(name: 'Time Series (60min)')
      Map<String, TimeSeries60Min> timeSeries60Min});

  @override
  $MetaDataModelCopyWith<$Res> get metadata;
}

/// @nodoc
class __$$TimeSeriesIntradayModelImplCopyWithImpl<$Res>
    extends _$TimeSeriesIntradayModelCopyWithImpl<$Res,
        _$TimeSeriesIntradayModelImpl>
    implements _$$TimeSeriesIntradayModelImplCopyWith<$Res> {
  __$$TimeSeriesIntradayModelImplCopyWithImpl(
      _$TimeSeriesIntradayModelImpl _value,
      $Res Function(_$TimeSeriesIntradayModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metadata = null,
    Object? timeSeries60Min = null,
  }) {
    return _then(_$TimeSeriesIntradayModelImpl(
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as MetaDataModel,
      timeSeries60Min: null == timeSeries60Min
          ? _value._timeSeries60Min
          : timeSeries60Min // ignore: cast_nullable_to_non_nullable
              as Map<String, TimeSeries60Min>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimeSeriesIntradayModelImpl implements _TimeSeriesIntradayModel {
  const _$TimeSeriesIntradayModelImpl(
      {@JsonKey(name: 'Meta Data') required this.metadata,
      @JsonKey(name: 'Time Series (60min)')
      required final Map<String, TimeSeries60Min> timeSeries60Min})
      : _timeSeries60Min = timeSeries60Min;

  factory _$TimeSeriesIntradayModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimeSeriesIntradayModelImplFromJson(json);

  @override
  @JsonKey(name: 'Meta Data')
  final MetaDataModel metadata;
  final Map<String, TimeSeries60Min> _timeSeries60Min;
  @override
  @JsonKey(name: 'Time Series (60min)')
  Map<String, TimeSeries60Min> get timeSeries60Min {
    if (_timeSeries60Min is EqualUnmodifiableMapView) return _timeSeries60Min;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_timeSeries60Min);
  }

  @override
  String toString() {
    return 'TimeSeriesIntradayModel(metadata: $metadata, timeSeries60Min: $timeSeries60Min)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeSeriesIntradayModelImpl &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata) &&
            const DeepCollectionEquality()
                .equals(other._timeSeries60Min, _timeSeries60Min));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, metadata,
      const DeepCollectionEquality().hash(_timeSeries60Min));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeSeriesIntradayModelImplCopyWith<_$TimeSeriesIntradayModelImpl>
      get copyWith => __$$TimeSeriesIntradayModelImplCopyWithImpl<
          _$TimeSeriesIntradayModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimeSeriesIntradayModelImplToJson(
      this,
    );
  }
}

abstract class _TimeSeriesIntradayModel implements TimeSeriesIntradayModel {
  const factory _TimeSeriesIntradayModel(
          {@JsonKey(name: 'Meta Data') required final MetaDataModel metadata,
          @JsonKey(name: 'Time Series (60min)')
          required final Map<String, TimeSeries60Min> timeSeries60Min}) =
      _$TimeSeriesIntradayModelImpl;

  factory _TimeSeriesIntradayModel.fromJson(Map<String, dynamic> json) =
      _$TimeSeriesIntradayModelImpl.fromJson;

  @override
  @JsonKey(name: 'Meta Data')
  MetaDataModel get metadata;
  @override
  @JsonKey(name: 'Time Series (60min)')
  Map<String, TimeSeries60Min> get timeSeries60Min;
  @override
  @JsonKey(ignore: true)
  _$$TimeSeriesIntradayModelImplCopyWith<_$TimeSeriesIntradayModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MetaDataModel _$MetaDataModelFromJson(Map<String, dynamic> json) {
  return _MetaDataModel.fromJson(json);
}

/// @nodoc
mixin _$MetaDataModel {
  @JsonKey(name: '1. Information')
  String get information => throw _privateConstructorUsedError;
  @JsonKey(name: '2. Symbol')
  String get symbol => throw _privateConstructorUsedError;
  @JsonKey(name: '3. Last Refreshed')
  String get lastRefreshed => throw _privateConstructorUsedError;
  @JsonKey(name: '4. Interval')
  String get interval => throw _privateConstructorUsedError;
  @JsonKey(name: '5. Output Size')
  String get outputSize => throw _privateConstructorUsedError;
  @JsonKey(name: '6. Time Zone')
  String get timeZone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaDataModelCopyWith<MetaDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaDataModelCopyWith<$Res> {
  factory $MetaDataModelCopyWith(
          MetaDataModel value, $Res Function(MetaDataModel) then) =
      _$MetaDataModelCopyWithImpl<$Res, MetaDataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '1. Information') String information,
      @JsonKey(name: '2. Symbol') String symbol,
      @JsonKey(name: '3. Last Refreshed') String lastRefreshed,
      @JsonKey(name: '4. Interval') String interval,
      @JsonKey(name: '5. Output Size') String outputSize,
      @JsonKey(name: '6. Time Zone') String timeZone});
}

/// @nodoc
class _$MetaDataModelCopyWithImpl<$Res, $Val extends MetaDataModel>
    implements $MetaDataModelCopyWith<$Res> {
  _$MetaDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? information = null,
    Object? symbol = null,
    Object? lastRefreshed = null,
    Object? interval = null,
    Object? outputSize = null,
    Object? timeZone = null,
  }) {
    return _then(_value.copyWith(
      information: null == information
          ? _value.information
          : information // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      lastRefreshed: null == lastRefreshed
          ? _value.lastRefreshed
          : lastRefreshed // ignore: cast_nullable_to_non_nullable
              as String,
      interval: null == interval
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as String,
      outputSize: null == outputSize
          ? _value.outputSize
          : outputSize // ignore: cast_nullable_to_non_nullable
              as String,
      timeZone: null == timeZone
          ? _value.timeZone
          : timeZone // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MetaDataModelImplCopyWith<$Res>
    implements $MetaDataModelCopyWith<$Res> {
  factory _$$MetaDataModelImplCopyWith(
          _$MetaDataModelImpl value, $Res Function(_$MetaDataModelImpl) then) =
      __$$MetaDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '1. Information') String information,
      @JsonKey(name: '2. Symbol') String symbol,
      @JsonKey(name: '3. Last Refreshed') String lastRefreshed,
      @JsonKey(name: '4. Interval') String interval,
      @JsonKey(name: '5. Output Size') String outputSize,
      @JsonKey(name: '6. Time Zone') String timeZone});
}

/// @nodoc
class __$$MetaDataModelImplCopyWithImpl<$Res>
    extends _$MetaDataModelCopyWithImpl<$Res, _$MetaDataModelImpl>
    implements _$$MetaDataModelImplCopyWith<$Res> {
  __$$MetaDataModelImplCopyWithImpl(
      _$MetaDataModelImpl _value, $Res Function(_$MetaDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? information = null,
    Object? symbol = null,
    Object? lastRefreshed = null,
    Object? interval = null,
    Object? outputSize = null,
    Object? timeZone = null,
  }) {
    return _then(_$MetaDataModelImpl(
      information: null == information
          ? _value.information
          : information // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      lastRefreshed: null == lastRefreshed
          ? _value.lastRefreshed
          : lastRefreshed // ignore: cast_nullable_to_non_nullable
              as String,
      interval: null == interval
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as String,
      outputSize: null == outputSize
          ? _value.outputSize
          : outputSize // ignore: cast_nullable_to_non_nullable
              as String,
      timeZone: null == timeZone
          ? _value.timeZone
          : timeZone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MetaDataModelImpl implements _MetaDataModel {
  const _$MetaDataModelImpl(
      {@JsonKey(name: '1. Information') required this.information,
      @JsonKey(name: '2. Symbol') required this.symbol,
      @JsonKey(name: '3. Last Refreshed') required this.lastRefreshed,
      @JsonKey(name: '4. Interval') required this.interval,
      @JsonKey(name: '5. Output Size') required this.outputSize,
      @JsonKey(name: '6. Time Zone') required this.timeZone});

  factory _$MetaDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetaDataModelImplFromJson(json);

  @override
  @JsonKey(name: '1. Information')
  final String information;
  @override
  @JsonKey(name: '2. Symbol')
  final String symbol;
  @override
  @JsonKey(name: '3. Last Refreshed')
  final String lastRefreshed;
  @override
  @JsonKey(name: '4. Interval')
  final String interval;
  @override
  @JsonKey(name: '5. Output Size')
  final String outputSize;
  @override
  @JsonKey(name: '6. Time Zone')
  final String timeZone;

  @override
  String toString() {
    return 'MetaDataModel(information: $information, symbol: $symbol, lastRefreshed: $lastRefreshed, interval: $interval, outputSize: $outputSize, timeZone: $timeZone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetaDataModelImpl &&
            (identical(other.information, information) ||
                other.information == information) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.lastRefreshed, lastRefreshed) ||
                other.lastRefreshed == lastRefreshed) &&
            (identical(other.interval, interval) ||
                other.interval == interval) &&
            (identical(other.outputSize, outputSize) ||
                other.outputSize == outputSize) &&
            (identical(other.timeZone, timeZone) ||
                other.timeZone == timeZone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, information, symbol,
      lastRefreshed, interval, outputSize, timeZone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MetaDataModelImplCopyWith<_$MetaDataModelImpl> get copyWith =>
      __$$MetaDataModelImplCopyWithImpl<_$MetaDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetaDataModelImplToJson(
      this,
    );
  }
}

abstract class _MetaDataModel implements MetaDataModel {
  const factory _MetaDataModel(
      {@JsonKey(name: '1. Information') required final String information,
      @JsonKey(name: '2. Symbol') required final String symbol,
      @JsonKey(name: '3. Last Refreshed') required final String lastRefreshed,
      @JsonKey(name: '4. Interval') required final String interval,
      @JsonKey(name: '5. Output Size') required final String outputSize,
      @JsonKey(name: '6. Time Zone')
      required final String timeZone}) = _$MetaDataModelImpl;

  factory _MetaDataModel.fromJson(Map<String, dynamic> json) =
      _$MetaDataModelImpl.fromJson;

  @override
  @JsonKey(name: '1. Information')
  String get information;
  @override
  @JsonKey(name: '2. Symbol')
  String get symbol;
  @override
  @JsonKey(name: '3. Last Refreshed')
  String get lastRefreshed;
  @override
  @JsonKey(name: '4. Interval')
  String get interval;
  @override
  @JsonKey(name: '5. Output Size')
  String get outputSize;
  @override
  @JsonKey(name: '6. Time Zone')
  String get timeZone;
  @override
  @JsonKey(ignore: true)
  _$$MetaDataModelImplCopyWith<_$MetaDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TimeSeries60Min _$TimeSeries60MinFromJson(Map<String, dynamic> json) {
  return _TimeSeries60Min.fromJson(json);
}

/// @nodoc
mixin _$TimeSeries60Min {
  @JsonKey(name: '1. open')
  String get open => throw _privateConstructorUsedError;
  @JsonKey(name: '2. high')
  String get high => throw _privateConstructorUsedError;
  @JsonKey(name: '3. low')
  String get low => throw _privateConstructorUsedError;
  @JsonKey(name: '4. close')
  String get close => throw _privateConstructorUsedError;
  @JsonKey(name: '5. volume')
  String get volume => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimeSeries60MinCopyWith<TimeSeries60Min> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeSeries60MinCopyWith<$Res> {
  factory $TimeSeries60MinCopyWith(
          TimeSeries60Min value, $Res Function(TimeSeries60Min) then) =
      _$TimeSeries60MinCopyWithImpl<$Res, TimeSeries60Min>;
  @useResult
  $Res call(
      {@JsonKey(name: '1. open') String open,
      @JsonKey(name: '2. high') String high,
      @JsonKey(name: '3. low') String low,
      @JsonKey(name: '4. close') String close,
      @JsonKey(name: '5. volume') String volume});
}

/// @nodoc
class _$TimeSeries60MinCopyWithImpl<$Res, $Val extends TimeSeries60Min>
    implements $TimeSeries60MinCopyWith<$Res> {
  _$TimeSeries60MinCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? open = null,
    Object? high = null,
    Object? low = null,
    Object? close = null,
    Object? volume = null,
  }) {
    return _then(_value.copyWith(
      open: null == open
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as String,
      high: null == high
          ? _value.high
          : high // ignore: cast_nullable_to_non_nullable
              as String,
      low: null == low
          ? _value.low
          : low // ignore: cast_nullable_to_non_nullable
              as String,
      close: null == close
          ? _value.close
          : close // ignore: cast_nullable_to_non_nullable
              as String,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimeSeries60MinImplCopyWith<$Res>
    implements $TimeSeries60MinCopyWith<$Res> {
  factory _$$TimeSeries60MinImplCopyWith(_$TimeSeries60MinImpl value,
          $Res Function(_$TimeSeries60MinImpl) then) =
      __$$TimeSeries60MinImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '1. open') String open,
      @JsonKey(name: '2. high') String high,
      @JsonKey(name: '3. low') String low,
      @JsonKey(name: '4. close') String close,
      @JsonKey(name: '5. volume') String volume});
}

/// @nodoc
class __$$TimeSeries60MinImplCopyWithImpl<$Res>
    extends _$TimeSeries60MinCopyWithImpl<$Res, _$TimeSeries60MinImpl>
    implements _$$TimeSeries60MinImplCopyWith<$Res> {
  __$$TimeSeries60MinImplCopyWithImpl(
      _$TimeSeries60MinImpl _value, $Res Function(_$TimeSeries60MinImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? open = null,
    Object? high = null,
    Object? low = null,
    Object? close = null,
    Object? volume = null,
  }) {
    return _then(_$TimeSeries60MinImpl(
      open: null == open
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as String,
      high: null == high
          ? _value.high
          : high // ignore: cast_nullable_to_non_nullable
              as String,
      low: null == low
          ? _value.low
          : low // ignore: cast_nullable_to_non_nullable
              as String,
      close: null == close
          ? _value.close
          : close // ignore: cast_nullable_to_non_nullable
              as String,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimeSeries60MinImpl implements _TimeSeries60Min {
  const _$TimeSeries60MinImpl(
      {@JsonKey(name: '1. open') required this.open,
      @JsonKey(name: '2. high') required this.high,
      @JsonKey(name: '3. low') required this.low,
      @JsonKey(name: '4. close') required this.close,
      @JsonKey(name: '5. volume') required this.volume});

  factory _$TimeSeries60MinImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimeSeries60MinImplFromJson(json);

  @override
  @JsonKey(name: '1. open')
  final String open;
  @override
  @JsonKey(name: '2. high')
  final String high;
  @override
  @JsonKey(name: '3. low')
  final String low;
  @override
  @JsonKey(name: '4. close')
  final String close;
  @override
  @JsonKey(name: '5. volume')
  final String volume;

  @override
  String toString() {
    return 'TimeSeries60Min(open: $open, high: $high, low: $low, close: $close, volume: $volume)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeSeries60MinImpl &&
            (identical(other.open, open) || other.open == open) &&
            (identical(other.high, high) || other.high == high) &&
            (identical(other.low, low) || other.low == low) &&
            (identical(other.close, close) || other.close == close) &&
            (identical(other.volume, volume) || other.volume == volume));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, open, high, low, close, volume);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeSeries60MinImplCopyWith<_$TimeSeries60MinImpl> get copyWith =>
      __$$TimeSeries60MinImplCopyWithImpl<_$TimeSeries60MinImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimeSeries60MinImplToJson(
      this,
    );
  }
}

abstract class _TimeSeries60Min implements TimeSeries60Min {
  const factory _TimeSeries60Min(
          {@JsonKey(name: '1. open') required final String open,
          @JsonKey(name: '2. high') required final String high,
          @JsonKey(name: '3. low') required final String low,
          @JsonKey(name: '4. close') required final String close,
          @JsonKey(name: '5. volume') required final String volume}) =
      _$TimeSeries60MinImpl;

  factory _TimeSeries60Min.fromJson(Map<String, dynamic> json) =
      _$TimeSeries60MinImpl.fromJson;

  @override
  @JsonKey(name: '1. open')
  String get open;
  @override
  @JsonKey(name: '2. high')
  String get high;
  @override
  @JsonKey(name: '3. low')
  String get low;
  @override
  @JsonKey(name: '4. close')
  String get close;
  @override
  @JsonKey(name: '5. volume')
  String get volume;
  @override
  @JsonKey(ignore: true)
  _$$TimeSeries60MinImplCopyWith<_$TimeSeries60MinImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
