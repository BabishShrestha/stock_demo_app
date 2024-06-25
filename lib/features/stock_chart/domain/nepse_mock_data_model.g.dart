// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nepse_mock_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NepseMockDataModelImpl _$$NepseMockDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NepseMockDataModelImpl(
      responseCode: json['response_code'] as String,
      responseMessage: json['response_message'] as String,
      data: NepseMockData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NepseMockDataModelImplToJson(
        _$NepseMockDataModelImpl instance) =>
    <String, dynamic>{
      'response_code': instance.responseCode,
      'response_message': instance.responseMessage,
      'data': instance.data,
    };

_$NepseMockDataImpl _$$NepseMockDataImplFromJson(Map<String, dynamic> json) =>
    _$NepseMockDataImpl(
      marketSumary:
          MarketSumary.fromJson(json['market_sumary'] as Map<String, dynamic>),
      minuteData: (json['minute_data'] as List<dynamic>)
          .map((e) => TimeSeriesData.fromJson(e as Map<String, dynamic>))
          .toList(),
      hourData: (json['hour_data'] as List<dynamic>)
          .map((e) => TimeSeriesData.fromJson(e as Map<String, dynamic>))
          .toList(),
      dayData: (json['day_data'] as List<dynamic>)
          .map((e) => TimeSeriesData.fromJson(e as Map<String, dynamic>))
          .toList(),
      monthData: (json['month_data'] as List<dynamic>)
          .map((e) => TimeSeriesData.fromJson(e as Map<String, dynamic>))
          .toList(),
      yearlyData: (json['yearly_data'] as List<dynamic>)
          .map((e) => TimeSeriesData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$NepseMockDataImplToJson(_$NepseMockDataImpl instance) =>
    <String, dynamic>{
      'market_sumary': instance.marketSumary,
      'minute_data': instance.minuteData,
      'hour_data': instance.hourData,
      'day_data': instance.dayData,
      'month_data': instance.monthData,
      'yearly_data': instance.yearlyData,
    };

_$DatumImpl _$$DatumImplFromJson(Map<String, dynamic> json) => _$DatumImpl(
      date: DateTime.parse(json['date'] as String),
      index: (json['index'] as num).toDouble(),
      change: (json['change'] as num).toDouble(),
      percentChange: (json['percent_change'] as num).toDouble(),
    );

Map<String, dynamic> _$$DatumImplToJson(_$DatumImpl instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'index': instance.index,
      'change': instance.change,
      'percent_change': instance.percentChange,
    };

_$MarketSumaryImpl _$$MarketSumaryImplFromJson(Map<String, dynamic> json) =>
    _$MarketSumaryImpl(
      todayNepse: json['today_nepse'] as String,
      change: (json['change'] as num).toDouble(),
      percentChange: (json['percent_change'] as num).toDouble(),
    );

Map<String, dynamic> _$$MarketSumaryImplToJson(_$MarketSumaryImpl instance) =>
    <String, dynamic>{
      'today_nepse': instance.todayNepse,
      'change': instance.change,
      'percent_change': instance.percentChange,
    };
