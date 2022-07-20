// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_study.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps

class _ApiStudy implements ApiStudy {
  _ApiStudy(this._dio, {this.baseUrl}) {
    baseUrl ??= 'http://117.4.243.193:8084/api/guide/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<Category> getDataCategory(param) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.addAll(param.toJson());
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Category>(Options(
                method: 'GET', headers: _headers, extra: _extra)
            .compose(
                _dio.options, 'v1/public/BlockCategory/GetCategoryByParentId',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Category.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Objects> getDataObject(body) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Objects>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, 'v1.0/public/SystemObject/GetList',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Objects.fromJson(_result.data!);
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
