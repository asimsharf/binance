import 'dart:convert';

import 'package:binance/DL/entities/market/agg_trades.dart';
import 'package:binance/DL/entities/market/exchange_info.dart';
import 'package:binance/DL/entities/market/historical_trades.dart';
import 'package:binance/utils/constants.dart';
import 'package:http/http.dart' as http;

import '../entities/market/avg_price.dart';
import '../entities/market/depth.dart';
import '../entities/market/klines.dart';
import '../entities/market/ticker.dart';
import '../entities/market/ticker_24hr.dart';
import '../entities/market/ticker_bool_ticker.dart';
import '../entities/market/ticker_price.dart';
import '../entities/market/time.dart';
import '../entities/market/trades.dart';
import '../entities/market/ui_klines.dart';

class MarketServices {
  Future<int> ping() async {
    final response = await http.get(
      Uri.parse('${Constance.instance.apiEndpoint}/ping'),
      headers: {
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      return 200;
    } else {
      throw Exception('Failed to ping');
    }
  }

  Future<Time> time() async {
    final response = await http.get(
      Uri.parse('${Constance.instance.apiEndpoint}/time'),
      headers: {
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      return Time.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to ping');
    }
  }

  Future<ExchangeInfo> exchangeInfo({symbol}) async {
    final response = await http.get(
      Uri.parse(
        '${Constance.instance.apiEndpoint}/exchangeInfo?symbol=$symbol',
      ),
      headers: {
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      return ExchangeInfo.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to fetch exchange info');
    }
  }

  Future<Depth> depth({symbol, limit}) async {
    final response = await http.get(
      Uri.parse(
        '${Constance.instance.apiEndpoint}/depth?symbol=$symbol&limit=$limit',
      ),
      headers: {
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      return Depth.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to fetch exchange info');
    }
  }

  Future<List<Trades>> trades({symbol, limit}) async {
    final response = await http.get(
      Uri.parse(
        '${Constance.instance.apiEndpoint}/trades?symbol=$symbol&limit=$limit',
      ),
      headers: {
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      List jsonResp = jsonDecode(response.body);
      return jsonResp.map((e) => Trades.fromJson(e)).toList();
    } else {
      throw Exception('Failed to fetch exchange info');
    }
  }

  Future<List<HistoricalTrades>> historicalTrades({symbol, limit}) async {
    final response = await http.get(
      Uri.parse(
        '${Constance.instance.apiEndpoint}/historicalTrades?symbol=$symbol&limit=$limit',
      ),
      headers: {
        'Content-Type': 'application/json',
        'X-MBX-APIKEY': Constance.instance.apiKey,
      },
    );

    if (response.statusCode == 200) {
      List jsonResp = jsonDecode(response.body);
      return jsonResp.map((e) => HistoricalTrades.fromJson(e)).toList();
    } else {
      throw Exception('Failed to fetch exchange info');
    }
  }

  Future<List<AggTrades>> aggTrades({symbol, limit}) async {
    final response = await http.get(
      Uri.parse(
        '${Constance.instance.apiEndpoint}/aggTrades?symbol=$symbol&limit=$limit',
      ),
      headers: {
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      List jsonResp = jsonDecode(response.body);
      return jsonResp.map((e) => AggTrades.fromJson(e)).toList();
    } else {
      throw Exception('Failed to fetch exchange info');
    }
  }

  Future<List<KLines>> kLines({symbol, interval, limit}) async {
    final response = await http.get(
      Uri.parse(
        '${Constance.instance.apiEndpoint}/klines?symbol=$symbol&interval=$interval&limit=$limit',
      ),
      headers: {
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      List jsonResp = jsonDecode(response.body);
      return jsonResp.map((e) => KLines.fromJson(e)).toList();
    } else {
      throw Exception('Failed to fetch exchange info');
    }
  }

  Future<List<UiKLines>> uiKLines({symbol, interval, limit}) async {
    final response = await http.get(
      Uri.parse(
        '${Constance.instance.apiEndpoint}/uiKlines?symbol=$symbol&interval=$interval&limit=$limit',
      ),
      headers: {
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      List jsonResp = jsonDecode(response.body);
      return jsonResp.map((e) => UiKLines.fromJson(e)).toList();
    } else {
      throw Exception('Failed to fetch exchange info');
    }
  }

  Future<AvgPrice> avgPrice({symbol}) async {
    final response = await http.get(
      Uri.parse(
        '${Constance.instance.apiEndpoint}/avgPrice?symbol=$symbol',
      ),
      headers: {
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      return AvgPrice.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to fetch exchange info');
    }
  }

  Future<Ticker24Hr> ticker24Hr({symbol, symbols}) async {
    final response = await http.get(
      Uri.parse(
        '${Constance.instance.apiEndpoint}/ticker/24hr?symbol=$symbol',
      ),
      headers: {
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      return Ticker24Hr.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to fetch exchange info');
    }
  }

  Future<TickerPrice> tickerPrice({symbol, symbols}) async {
    final response = await http.get(
      Uri.parse(
        '${Constance.instance.apiEndpoint}/ticker/price?symbol=$symbol',
      ),
      headers: {
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      return TickerPrice.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to fetch exchange info');
    }
  }

  Future<TickerBookTicker> tickerBookTicker({symbol, symbols}) async {
    final response = await http.get(
      Uri.parse(
        '${Constance.instance.apiEndpoint}/ticker/bookTicker?symbol=$symbol',
      ),
      headers: {
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      return TickerBookTicker.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to fetch exchange info');
    }
  }

  Future<Ticker> ticker({symbol, symbols}) async {
    final response = await http.get(
      Uri.parse(
        '${Constance.instance.apiEndpoint}/ticker?symbol=$symbol',
      ),
      headers: {
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      return Ticker.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to fetch exchange info');
    }
  }
}
