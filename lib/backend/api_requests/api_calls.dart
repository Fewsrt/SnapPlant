import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

Future<ApiCallResponse> tempApiCall() {
  return ApiManager.instance.makeApiCall(
    callName: 'TempApi',
    apiUrl:
        'https://api.openweathermap.org/data/2.5/weather?q=bangkok&appid=a25a09e9c2ccd3ee0dac58eae7950805&units=Metric',
    callType: ApiCallType.GET,
    headers: {},
    params: {},
    returnBody: true,
  );
}
