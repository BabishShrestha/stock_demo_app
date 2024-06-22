import 'package:freezed_annotation/freezed_annotation.dart';

part 'time_series_intraday_model.freezed.dart';
part 'time_series_intraday_model.g.dart';

@freezed
class TimeSeriesIntradayModel with _$TimeSeriesIntradayModel {
  const factory TimeSeriesIntradayModel({
    @JsonKey(name: 'Meta Data') required MetaDataModel metadata,
    @JsonKey(name: 'Time Series (60min)')
    required Map<String, TimeSeries60Min> timeSeries60Min,
  }) = _TimeSeriesIntradayModel;

  factory TimeSeriesIntradayModel.fromJson(Map<String, dynamic> json) =>
      _$TimeSeriesIntradayModelFromJson(json);
}

@freezed
class MetaDataModel with _$MetaDataModel {
  const factory MetaDataModel({
    @JsonKey(name: '1. Information') required String information,
    @JsonKey(name: '2. Symbol') required String symbol,
    @JsonKey(name: '3. Last Refreshed') required String lastRefreshed,
    @JsonKey(name: '4. Interval') required String interval,
    @JsonKey(name: '5. Output Size') required String outputSize,
    @JsonKey(name: '6. Time Zone') required String timeZone,
  }) = _MetaDataModel;

  factory MetaDataModel.fromJson(Map<String, dynamic> json) =>
      _$MetaDataModelFromJson(json);
}

@freezed
class TimeSeries60Min with _$TimeSeries60Min {
  const factory TimeSeries60Min({
    @JsonKey(name: '1. open') required String open,
    @JsonKey(name: '2. high') required String high,
    @JsonKey(name: '3. low') required String low,
    @JsonKey(name: '4. close') required String close,
    @JsonKey(name: '5. volume') required String volume,
  }) = _TimeSeries60Min;

  factory TimeSeries60Min.fromJson(Map<String, dynamic> json) =>
      _$TimeSeries60MinFromJson(json);
}
