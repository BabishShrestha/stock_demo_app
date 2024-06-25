// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nepse_mock_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NepseMockDataModel _$NepseMockDataModelFromJson(Map<String, dynamic> json) {
  return _NepseMockDataModel.fromJson(json);
}

/// @nodoc
mixin _$NepseMockDataModel {
  @JsonKey(name: "response_code")
  String get responseCode => throw _privateConstructorUsedError;
  @JsonKey(name: "response_message")
  String get responseMessage => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  NepseMockData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NepseMockDataModelCopyWith<NepseMockDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NepseMockDataModelCopyWith<$Res> {
  factory $NepseMockDataModelCopyWith(
          NepseMockDataModel value, $Res Function(NepseMockDataModel) then) =
      _$NepseMockDataModelCopyWithImpl<$Res, NepseMockDataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "response_code") String responseCode,
      @JsonKey(name: "response_message") String responseMessage,
      @JsonKey(name: "data") NepseMockData data});

  $NepseMockDataCopyWith<$Res> get data;
}

/// @nodoc
class _$NepseMockDataModelCopyWithImpl<$Res, $Val extends NepseMockDataModel>
    implements $NepseMockDataModelCopyWith<$Res> {
  _$NepseMockDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseCode = null,
    Object? responseMessage = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      responseCode: null == responseCode
          ? _value.responseCode
          : responseCode // ignore: cast_nullable_to_non_nullable
              as String,
      responseMessage: null == responseMessage
          ? _value.responseMessage
          : responseMessage // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as NepseMockData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NepseMockDataCopyWith<$Res> get data {
    return $NepseMockDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NepseMockDataModelImplCopyWith<$Res>
    implements $NepseMockDataModelCopyWith<$Res> {
  factory _$$NepseMockDataModelImplCopyWith(_$NepseMockDataModelImpl value,
          $Res Function(_$NepseMockDataModelImpl) then) =
      __$$NepseMockDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "response_code") String responseCode,
      @JsonKey(name: "response_message") String responseMessage,
      @JsonKey(name: "data") NepseMockData data});

  @override
  $NepseMockDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$NepseMockDataModelImplCopyWithImpl<$Res>
    extends _$NepseMockDataModelCopyWithImpl<$Res, _$NepseMockDataModelImpl>
    implements _$$NepseMockDataModelImplCopyWith<$Res> {
  __$$NepseMockDataModelImplCopyWithImpl(_$NepseMockDataModelImpl _value,
      $Res Function(_$NepseMockDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseCode = null,
    Object? responseMessage = null,
    Object? data = null,
  }) {
    return _then(_$NepseMockDataModelImpl(
      responseCode: null == responseCode
          ? _value.responseCode
          : responseCode // ignore: cast_nullable_to_non_nullable
              as String,
      responseMessage: null == responseMessage
          ? _value.responseMessage
          : responseMessage // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as NepseMockData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NepseMockDataModelImpl implements _NepseMockDataModel {
  const _$NepseMockDataModelImpl(
      {@JsonKey(name: "response_code") required this.responseCode,
      @JsonKey(name: "response_message") required this.responseMessage,
      @JsonKey(name: "data") required this.data});

  factory _$NepseMockDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NepseMockDataModelImplFromJson(json);

  @override
  @JsonKey(name: "response_code")
  final String responseCode;
  @override
  @JsonKey(name: "response_message")
  final String responseMessage;
  @override
  @JsonKey(name: "data")
  final NepseMockData data;

  @override
  String toString() {
    return 'NepseMockDataModel(responseCode: $responseCode, responseMessage: $responseMessage, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NepseMockDataModelImpl &&
            (identical(other.responseCode, responseCode) ||
                other.responseCode == responseCode) &&
            (identical(other.responseMessage, responseMessage) ||
                other.responseMessage == responseMessage) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, responseCode, responseMessage, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NepseMockDataModelImplCopyWith<_$NepseMockDataModelImpl> get copyWith =>
      __$$NepseMockDataModelImplCopyWithImpl<_$NepseMockDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NepseMockDataModelImplToJson(
      this,
    );
  }
}

abstract class _NepseMockDataModel implements NepseMockDataModel {
  const factory _NepseMockDataModel(
      {@JsonKey(name: "response_code") required final String responseCode,
      @JsonKey(name: "response_message") required final String responseMessage,
      @JsonKey(name: "data")
      required final NepseMockData data}) = _$NepseMockDataModelImpl;

  factory _NepseMockDataModel.fromJson(Map<String, dynamic> json) =
      _$NepseMockDataModelImpl.fromJson;

  @override
  @JsonKey(name: "response_code")
  String get responseCode;
  @override
  @JsonKey(name: "response_message")
  String get responseMessage;
  @override
  @JsonKey(name: "data")
  NepseMockData get data;
  @override
  @JsonKey(ignore: true)
  _$$NepseMockDataModelImplCopyWith<_$NepseMockDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NepseMockData _$NepseMockDataFromJson(Map<String, dynamic> json) {
  return _NepseMockData.fromJson(json);
}

/// @nodoc
mixin _$NepseMockData {
  @JsonKey(name: "market_sumary")
  MarketSumary get marketSumary => throw _privateConstructorUsedError;
  @JsonKey(name: "minute_data")
  List<TimeSeriesData> get minuteData => throw _privateConstructorUsedError;
  @JsonKey(name: "hour_data")
  List<TimeSeriesData> get hourData => throw _privateConstructorUsedError;
  @JsonKey(name: "day_data")
  List<TimeSeriesData> get dayData => throw _privateConstructorUsedError;
  @JsonKey(name: "month_data")
  List<TimeSeriesData> get monthData => throw _privateConstructorUsedError;
  @JsonKey(name: "yearly_data")
  List<TimeSeriesData> get yearlyData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NepseMockDataCopyWith<NepseMockData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NepseMockDataCopyWith<$Res> {
  factory $NepseMockDataCopyWith(
          NepseMockData value, $Res Function(NepseMockData) then) =
      _$NepseMockDataCopyWithImpl<$Res, NepseMockData>;
  @useResult
  $Res call(
      {@JsonKey(name: "market_sumary") MarketSumary marketSumary,
      @JsonKey(name: "minute_data") List<TimeSeriesData> minuteData,
      @JsonKey(name: "hour_data") List<TimeSeriesData> hourData,
      @JsonKey(name: "day_data") List<TimeSeriesData> dayData,
      @JsonKey(name: "month_data") List<TimeSeriesData> monthData,
      @JsonKey(name: "yearly_data") List<TimeSeriesData> yearlyData});

  $MarketSumaryCopyWith<$Res> get marketSumary;
}

/// @nodoc
class _$NepseMockDataCopyWithImpl<$Res, $Val extends NepseMockData>
    implements $NepseMockDataCopyWith<$Res> {
  _$NepseMockDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? marketSumary = null,
    Object? minuteData = null,
    Object? hourData = null,
    Object? dayData = null,
    Object? monthData = null,
    Object? yearlyData = null,
  }) {
    return _then(_value.copyWith(
      marketSumary: null == marketSumary
          ? _value.marketSumary
          : marketSumary // ignore: cast_nullable_to_non_nullable
              as MarketSumary,
      minuteData: null == minuteData
          ? _value.minuteData
          : minuteData // ignore: cast_nullable_to_non_nullable
              as List<TimeSeriesData>,
      hourData: null == hourData
          ? _value.hourData
          : hourData // ignore: cast_nullable_to_non_nullable
              as List<TimeSeriesData>,
      dayData: null == dayData
          ? _value.dayData
          : dayData // ignore: cast_nullable_to_non_nullable
              as List<TimeSeriesData>,
      monthData: null == monthData
          ? _value.monthData
          : monthData // ignore: cast_nullable_to_non_nullable
              as List<TimeSeriesData>,
      yearlyData: null == yearlyData
          ? _value.yearlyData
          : yearlyData // ignore: cast_nullable_to_non_nullable
              as List<TimeSeriesData>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MarketSumaryCopyWith<$Res> get marketSumary {
    return $MarketSumaryCopyWith<$Res>(_value.marketSumary, (value) {
      return _then(_value.copyWith(marketSumary: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NepseMockDataImplCopyWith<$Res>
    implements $NepseMockDataCopyWith<$Res> {
  factory _$$NepseMockDataImplCopyWith(
          _$NepseMockDataImpl value, $Res Function(_$NepseMockDataImpl) then) =
      __$$NepseMockDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "market_sumary") MarketSumary marketSumary,
      @JsonKey(name: "minute_data") List<TimeSeriesData> minuteData,
      @JsonKey(name: "hour_data") List<TimeSeriesData> hourData,
      @JsonKey(name: "day_data") List<TimeSeriesData> dayData,
      @JsonKey(name: "month_data") List<TimeSeriesData> monthData,
      @JsonKey(name: "yearly_data") List<TimeSeriesData> yearlyData});

  @override
  $MarketSumaryCopyWith<$Res> get marketSumary;
}

/// @nodoc
class __$$NepseMockDataImplCopyWithImpl<$Res>
    extends _$NepseMockDataCopyWithImpl<$Res, _$NepseMockDataImpl>
    implements _$$NepseMockDataImplCopyWith<$Res> {
  __$$NepseMockDataImplCopyWithImpl(
      _$NepseMockDataImpl _value, $Res Function(_$NepseMockDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? marketSumary = null,
    Object? minuteData = null,
    Object? hourData = null,
    Object? dayData = null,
    Object? monthData = null,
    Object? yearlyData = null,
  }) {
    return _then(_$NepseMockDataImpl(
      marketSumary: null == marketSumary
          ? _value.marketSumary
          : marketSumary // ignore: cast_nullable_to_non_nullable
              as MarketSumary,
      minuteData: null == minuteData
          ? _value._minuteData
          : minuteData // ignore: cast_nullable_to_non_nullable
              as List<TimeSeriesData>,
      hourData: null == hourData
          ? _value._hourData
          : hourData // ignore: cast_nullable_to_non_nullable
              as List<TimeSeriesData>,
      dayData: null == dayData
          ? _value._dayData
          : dayData // ignore: cast_nullable_to_non_nullable
              as List<TimeSeriesData>,
      monthData: null == monthData
          ? _value._monthData
          : monthData // ignore: cast_nullable_to_non_nullable
              as List<TimeSeriesData>,
      yearlyData: null == yearlyData
          ? _value._yearlyData
          : yearlyData // ignore: cast_nullable_to_non_nullable
              as List<TimeSeriesData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NepseMockDataImpl implements _NepseMockData {
  const _$NepseMockDataImpl(
      {@JsonKey(name: "market_sumary") required this.marketSumary,
      @JsonKey(name: "minute_data")
      required final List<TimeSeriesData> minuteData,
      @JsonKey(name: "hour_data") required final List<TimeSeriesData> hourData,
      @JsonKey(name: "day_data") required final List<TimeSeriesData> dayData,
      @JsonKey(name: "month_data")
      required final List<TimeSeriesData> monthData,
      @JsonKey(name: "yearly_data")
      required final List<TimeSeriesData> yearlyData})
      : _minuteData = minuteData,
        _hourData = hourData,
        _dayData = dayData,
        _monthData = monthData,
        _yearlyData = yearlyData;

  factory _$NepseMockDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$NepseMockDataImplFromJson(json);

  @override
  @JsonKey(name: "market_sumary")
  final MarketSumary marketSumary;
  final List<TimeSeriesData> _minuteData;
  @override
  @JsonKey(name: "minute_data")
  List<TimeSeriesData> get minuteData {
    if (_minuteData is EqualUnmodifiableListView) return _minuteData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_minuteData);
  }

  final List<TimeSeriesData> _hourData;
  @override
  @JsonKey(name: "hour_data")
  List<TimeSeriesData> get hourData {
    if (_hourData is EqualUnmodifiableListView) return _hourData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hourData);
  }

  final List<TimeSeriesData> _dayData;
  @override
  @JsonKey(name: "day_data")
  List<TimeSeriesData> get dayData {
    if (_dayData is EqualUnmodifiableListView) return _dayData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dayData);
  }

  final List<TimeSeriesData> _monthData;
  @override
  @JsonKey(name: "month_data")
  List<TimeSeriesData> get monthData {
    if (_monthData is EqualUnmodifiableListView) return _monthData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_monthData);
  }

  final List<TimeSeriesData> _yearlyData;
  @override
  @JsonKey(name: "yearly_data")
  List<TimeSeriesData> get yearlyData {
    if (_yearlyData is EqualUnmodifiableListView) return _yearlyData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_yearlyData);
  }

  @override
  String toString() {
    return 'NepseMockData(marketSumary: $marketSumary, minuteData: $minuteData, hourData: $hourData, dayData: $dayData, monthData: $monthData, yearlyData: $yearlyData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NepseMockDataImpl &&
            (identical(other.marketSumary, marketSumary) ||
                other.marketSumary == marketSumary) &&
            const DeepCollectionEquality()
                .equals(other._minuteData, _minuteData) &&
            const DeepCollectionEquality().equals(other._hourData, _hourData) &&
            const DeepCollectionEquality().equals(other._dayData, _dayData) &&
            const DeepCollectionEquality()
                .equals(other._monthData, _monthData) &&
            const DeepCollectionEquality()
                .equals(other._yearlyData, _yearlyData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      marketSumary,
      const DeepCollectionEquality().hash(_minuteData),
      const DeepCollectionEquality().hash(_hourData),
      const DeepCollectionEquality().hash(_dayData),
      const DeepCollectionEquality().hash(_monthData),
      const DeepCollectionEquality().hash(_yearlyData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NepseMockDataImplCopyWith<_$NepseMockDataImpl> get copyWith =>
      __$$NepseMockDataImplCopyWithImpl<_$NepseMockDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NepseMockDataImplToJson(
      this,
    );
  }
}

abstract class _NepseMockData implements NepseMockData {
  const factory _NepseMockData(
      {@JsonKey(name: "market_sumary") required final MarketSumary marketSumary,
      @JsonKey(name: "minute_data")
      required final List<TimeSeriesData> minuteData,
      @JsonKey(name: "hour_data") required final List<TimeSeriesData> hourData,
      @JsonKey(name: "day_data") required final List<TimeSeriesData> dayData,
      @JsonKey(name: "month_data")
      required final List<TimeSeriesData> monthData,
      @JsonKey(name: "yearly_data")
      required final List<TimeSeriesData> yearlyData}) = _$NepseMockDataImpl;

  factory _NepseMockData.fromJson(Map<String, dynamic> json) =
      _$NepseMockDataImpl.fromJson;

  @override
  @JsonKey(name: "market_sumary")
  MarketSumary get marketSumary;
  @override
  @JsonKey(name: "minute_data")
  List<TimeSeriesData> get minuteData;
  @override
  @JsonKey(name: "hour_data")
  List<TimeSeriesData> get hourData;
  @override
  @JsonKey(name: "day_data")
  List<TimeSeriesData> get dayData;
  @override
  @JsonKey(name: "month_data")
  List<TimeSeriesData> get monthData;
  @override
  @JsonKey(name: "yearly_data")
  List<TimeSeriesData> get yearlyData;
  @override
  @JsonKey(ignore: true)
  _$$NepseMockDataImplCopyWith<_$NepseMockDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TimeSeriesData _$TimeSeriesDataFromJson(Map<String, dynamic> json) {
  return _Datum.fromJson(json);
}

/// @nodoc
mixin _$TimeSeriesData {
  @JsonKey(name: "date")
  DateTime get date => throw _privateConstructorUsedError;
  @JsonKey(name: "index")
  double get index => throw _privateConstructorUsedError;
  @JsonKey(name: "change")
  double get change => throw _privateConstructorUsedError;
  @JsonKey(name: "percent_change")
  double get percentChange => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimeSeriesDataCopyWith<TimeSeriesData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeSeriesDataCopyWith<$Res> {
  factory $TimeSeriesDataCopyWith(
          TimeSeriesData value, $Res Function(TimeSeriesData) then) =
      _$TimeSeriesDataCopyWithImpl<$Res, TimeSeriesData>;
  @useResult
  $Res call(
      {@JsonKey(name: "date") DateTime date,
      @JsonKey(name: "index") double index,
      @JsonKey(name: "change") double change,
      @JsonKey(name: "percent_change") double percentChange});
}

/// @nodoc
class _$TimeSeriesDataCopyWithImpl<$Res, $Val extends TimeSeriesData>
    implements $TimeSeriesDataCopyWith<$Res> {
  _$TimeSeriesDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? index = null,
    Object? change = null,
    Object? percentChange = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as double,
      change: null == change
          ? _value.change
          : change // ignore: cast_nullable_to_non_nullable
              as double,
      percentChange: null == percentChange
          ? _value.percentChange
          : percentChange // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DatumImplCopyWith<$Res>
    implements $TimeSeriesDataCopyWith<$Res> {
  factory _$$DatumImplCopyWith(
          _$DatumImpl value, $Res Function(_$DatumImpl) then) =
      __$$DatumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "date") DateTime date,
      @JsonKey(name: "index") double index,
      @JsonKey(name: "change") double change,
      @JsonKey(name: "percent_change") double percentChange});
}

/// @nodoc
class __$$DatumImplCopyWithImpl<$Res>
    extends _$TimeSeriesDataCopyWithImpl<$Res, _$DatumImpl>
    implements _$$DatumImplCopyWith<$Res> {
  __$$DatumImplCopyWithImpl(
      _$DatumImpl _value, $Res Function(_$DatumImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? index = null,
    Object? change = null,
    Object? percentChange = null,
  }) {
    return _then(_$DatumImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as double,
      change: null == change
          ? _value.change
          : change // ignore: cast_nullable_to_non_nullable
              as double,
      percentChange: null == percentChange
          ? _value.percentChange
          : percentChange // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DatumImpl implements _Datum {
  const _$DatumImpl(
      {@JsonKey(name: "date") required this.date,
      @JsonKey(name: "index") required this.index,
      @JsonKey(name: "change") required this.change,
      @JsonKey(name: "percent_change") required this.percentChange});

  factory _$DatumImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatumImplFromJson(json);

  @override
  @JsonKey(name: "date")
  final DateTime date;
  @override
  @JsonKey(name: "index")
  final double index;
  @override
  @JsonKey(name: "change")
  final double change;
  @override
  @JsonKey(name: "percent_change")
  final double percentChange;

  @override
  String toString() {
    return 'TimeSeriesData(date: $date, index: $index, change: $change, percentChange: $percentChange)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatumImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.change, change) || other.change == change) &&
            (identical(other.percentChange, percentChange) ||
                other.percentChange == percentChange));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, date, index, change, percentChange);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
      __$$DatumImplCopyWithImpl<_$DatumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DatumImplToJson(
      this,
    );
  }
}

abstract class _Datum implements TimeSeriesData {
  const factory _Datum(
      {@JsonKey(name: "date") required final DateTime date,
      @JsonKey(name: "index") required final double index,
      @JsonKey(name: "change") required final double change,
      @JsonKey(name: "percent_change")
      required final double percentChange}) = _$DatumImpl;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$DatumImpl.fromJson;

  @override
  @JsonKey(name: "date")
  DateTime get date;
  @override
  @JsonKey(name: "index")
  double get index;
  @override
  @JsonKey(name: "change")
  double get change;
  @override
  @JsonKey(name: "percent_change")
  double get percentChange;
  @override
  @JsonKey(ignore: true)
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MarketSumary _$MarketSumaryFromJson(Map<String, dynamic> json) {
  return _MarketSumary.fromJson(json);
}

/// @nodoc
mixin _$MarketSumary {
  @JsonKey(name: "today_nepse")
  String get todayNepse => throw _privateConstructorUsedError;
  @JsonKey(name: "change")
  double get change => throw _privateConstructorUsedError;
  @JsonKey(name: "percent_change")
  double get percentChange => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MarketSumaryCopyWith<MarketSumary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketSumaryCopyWith<$Res> {
  factory $MarketSumaryCopyWith(
          MarketSumary value, $Res Function(MarketSumary) then) =
      _$MarketSumaryCopyWithImpl<$Res, MarketSumary>;
  @useResult
  $Res call(
      {@JsonKey(name: "today_nepse") String todayNepse,
      @JsonKey(name: "change") double change,
      @JsonKey(name: "percent_change") double percentChange});
}

/// @nodoc
class _$MarketSumaryCopyWithImpl<$Res, $Val extends MarketSumary>
    implements $MarketSumaryCopyWith<$Res> {
  _$MarketSumaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todayNepse = null,
    Object? change = null,
    Object? percentChange = null,
  }) {
    return _then(_value.copyWith(
      todayNepse: null == todayNepse
          ? _value.todayNepse
          : todayNepse // ignore: cast_nullable_to_non_nullable
              as String,
      change: null == change
          ? _value.change
          : change // ignore: cast_nullable_to_non_nullable
              as double,
      percentChange: null == percentChange
          ? _value.percentChange
          : percentChange // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MarketSumaryImplCopyWith<$Res>
    implements $MarketSumaryCopyWith<$Res> {
  factory _$$MarketSumaryImplCopyWith(
          _$MarketSumaryImpl value, $Res Function(_$MarketSumaryImpl) then) =
      __$$MarketSumaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "today_nepse") String todayNepse,
      @JsonKey(name: "change") double change,
      @JsonKey(name: "percent_change") double percentChange});
}

/// @nodoc
class __$$MarketSumaryImplCopyWithImpl<$Res>
    extends _$MarketSumaryCopyWithImpl<$Res, _$MarketSumaryImpl>
    implements _$$MarketSumaryImplCopyWith<$Res> {
  __$$MarketSumaryImplCopyWithImpl(
      _$MarketSumaryImpl _value, $Res Function(_$MarketSumaryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todayNepse = null,
    Object? change = null,
    Object? percentChange = null,
  }) {
    return _then(_$MarketSumaryImpl(
      todayNepse: null == todayNepse
          ? _value.todayNepse
          : todayNepse // ignore: cast_nullable_to_non_nullable
              as String,
      change: null == change
          ? _value.change
          : change // ignore: cast_nullable_to_non_nullable
              as double,
      percentChange: null == percentChange
          ? _value.percentChange
          : percentChange // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MarketSumaryImpl implements _MarketSumary {
  const _$MarketSumaryImpl(
      {@JsonKey(name: "today_nepse") required this.todayNepse,
      @JsonKey(name: "change") required this.change,
      @JsonKey(name: "percent_change") required this.percentChange});

  factory _$MarketSumaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$MarketSumaryImplFromJson(json);

  @override
  @JsonKey(name: "today_nepse")
  final String todayNepse;
  @override
  @JsonKey(name: "change")
  final double change;
  @override
  @JsonKey(name: "percent_change")
  final double percentChange;

  @override
  String toString() {
    return 'MarketSumary(todayNepse: $todayNepse, change: $change, percentChange: $percentChange)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarketSumaryImpl &&
            (identical(other.todayNepse, todayNepse) ||
                other.todayNepse == todayNepse) &&
            (identical(other.change, change) || other.change == change) &&
            (identical(other.percentChange, percentChange) ||
                other.percentChange == percentChange));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, todayNepse, change, percentChange);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarketSumaryImplCopyWith<_$MarketSumaryImpl> get copyWith =>
      __$$MarketSumaryImplCopyWithImpl<_$MarketSumaryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MarketSumaryImplToJson(
      this,
    );
  }
}

abstract class _MarketSumary implements MarketSumary {
  const factory _MarketSumary(
      {@JsonKey(name: "today_nepse") required final String todayNepse,
      @JsonKey(name: "change") required final double change,
      @JsonKey(name: "percent_change")
      required final double percentChange}) = _$MarketSumaryImpl;

  factory _MarketSumary.fromJson(Map<String, dynamic> json) =
      _$MarketSumaryImpl.fromJson;

  @override
  @JsonKey(name: "today_nepse")
  String get todayNepse;
  @override
  @JsonKey(name: "change")
  double get change;
  @override
  @JsonKey(name: "percent_change")
  double get percentChange;
  @override
  @JsonKey(ignore: true)
  _$$MarketSumaryImplCopyWith<_$MarketSumaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
