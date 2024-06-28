// To parse this JSON data, do
//
//     final nepseMockDataModel = nepseMockDataModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'nepse_mock_data_model.freezed.dart';
part 'nepse_mock_data_model.g.dart';

@freezed
class NepseMockDataModel with _$NepseMockDataModel {
  const factory NepseMockDataModel({
    @JsonKey(name: "response_code") required String responseCode,
    @JsonKey(name: "response_message") required String responseMessage,
    @JsonKey(name: "data") required NepseMockData data,
  }) = _NepseMockDataModel;

  factory NepseMockDataModel.fromJson(Map<String, dynamic> json) =>
      _$NepseMockDataModelFromJson(json);
}

@freezed
class NepseMockData with _$NepseMockData {
  const factory NepseMockData({
    @JsonKey(name: "market_sumary") required MarketSumary marketSumary,
    @JsonKey(name: "minute_data") required List<TimeSeriesData> minuteData,
    @JsonKey(name: "hour_data") required List<TimeSeriesData> hourData,
    @JsonKey(name: "day_data") required List<TimeSeriesData> dayData,
    @JsonKey(name: "month_data") required List<TimeSeriesData> monthData,
    @JsonKey(name: "yearly_data") required List<TimeSeriesData> yearlyData,
  }) = _NepseMockData;

  factory NepseMockData.fromJson(Map<String, dynamic> json) =>
      _$NepseMockDataFromJson(json);
}

@freezed
class TimeSeriesData with _$TimeSeriesData {
  const factory TimeSeriesData({
    @JsonKey(name: "date") required DateTime date,
    @JsonKey(name: "index") required double index,
    @JsonKey(name: "change") required double change,
    @JsonKey(name: "percent_change") required double percentChange,
  }) = _Datum;

  factory TimeSeriesData.fromJson(Map<String, dynamic> json) =>
      _$TimeSeriesDataFromJson(json);
}

@freezed
class MarketSumary with _$MarketSumary {
  const factory MarketSumary({
    @JsonKey(name: "today_nepse") required String todayNepse,
    @JsonKey(name: "change") required double change,
    @JsonKey(name: "percent_change") required double percentChange,
  }) = _MarketSumary;

  factory MarketSumary.fromJson(Map<String, dynamic> json) =>
      _$MarketSumaryFromJson(json);
}

enum NepseTimeSeries { minute, hour, day, month, year }
