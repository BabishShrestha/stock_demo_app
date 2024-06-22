// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_series_intraday_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TimeSeriesIntradayModelImpl _$$TimeSeriesIntradayModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TimeSeriesIntradayModelImpl(
      metadata:
          MetaDataModel.fromJson(json['Meta Data'] as Map<String, dynamic>),
      timeSeries60Min:
          (json['Time Series (60min)'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(k, TimeSeries60Min.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$TimeSeriesIntradayModelImplToJson(
        _$TimeSeriesIntradayModelImpl instance) =>
    <String, dynamic>{
      'Meta Data': instance.metadata,
      'Time Series (60min)': instance.timeSeries60Min,
    };

_$MetaDataModelImpl _$$MetaDataModelImplFromJson(Map<String, dynamic> json) =>
    _$MetaDataModelImpl(
      information: json['1. Information'] as String,
      symbol: json['2. Symbol'] as String,
      lastRefreshed: json['3. Last Refreshed'] as String,
      interval: json['4. Interval'] as String,
      outputSize: json['5. Output Size'] as String,
      timeZone: json['6. Time Zone'] as String,
    );

Map<String, dynamic> _$$MetaDataModelImplToJson(_$MetaDataModelImpl instance) =>
    <String, dynamic>{
      '1. Information': instance.information,
      '2. Symbol': instance.symbol,
      '3. Last Refreshed': instance.lastRefreshed,
      '4. Interval': instance.interval,
      '5. Output Size': instance.outputSize,
      '6. Time Zone': instance.timeZone,
    };

_$TimeSeries60MinImpl _$$TimeSeries60MinImplFromJson(
        Map<String, dynamic> json) =>
    _$TimeSeries60MinImpl(
      open: json['1. open'] as String,
      high: json['2. high'] as String,
      low: json['3. low'] as String,
      close: json['4. close'] as String,
      volume: json['5. volume'] as String,
    );

Map<String, dynamic> _$$TimeSeries60MinImplToJson(
        _$TimeSeries60MinImpl instance) =>
    <String, dynamic>{
      '1. open': instance.open,
      '2. high': instance.high,
      '3. low': instance.low,
      '4. close': instance.close,
      '5. volume': instance.volume,
    };
