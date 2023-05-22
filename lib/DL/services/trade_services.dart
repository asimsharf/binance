import 'package:http/http.dart' as http;

import '../../utils/constants.dart';

class TradeServices {
  Future<int> orderTest(Map data) async {
    final response = await http.post(
      Uri.parse('${Constance.instance.apiEndpoint}/order/test'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: data,
    );

    if (response.statusCode == 200) {
      return 200;
    } else {
      throw Exception('Failed to ping');
    }
  }
}
