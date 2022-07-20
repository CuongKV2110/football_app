// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_holland.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps

class _ApiHolland implements ApiHolland {
  _ApiHolland(this._dio, {this.baseUrl}) {
    baseUrl ??= 'http://117.4.243.193:8084/api/guide/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<Holland> getData() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(_setStreamType<
        Holland>(Options(
            method: 'GET', headers: _headers, extra: _extra)
        .compose(_dio.options,
            'v1/public/BusinessLineTestCategory/GetQuestionHollandForParent',
            queryParameters: queryParameters, data: _data)
        .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Holland.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
