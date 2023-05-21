import 'package:binance/DL/entities/market/historical_trades.dart';
import 'package:binance/DL/entities/market/klines.dart';
import 'package:binance/DL/entities/market/ui_klines.dart';
import 'package:binance/DL/services/market_services.dart';

import '../entities/market/agg_trades.dart';
import '../entities/market/avg_price.dart';
import '../entities/market/depth.dart';
import '../entities/market/exchange_info.dart';
import '../entities/market/ticker.dart';
import '../entities/market/ticker_24hr.dart';
import '../entities/market/ticker_bool_ticker.dart';
import '../entities/market/ticker_price.dart';
import '../entities/market/time.dart';
import '../entities/market/trades.dart';

class MarketRepository {
  final MarketServices _marketServices = MarketServices();

  Future<int> ping() => _marketServices.ping();

  Future<Time> time() => _marketServices.time();

  Future<ExchangeInfo> exchangeInfo({symbol}) {
    return _marketServices.exchangeInfo(symbol: symbol);
  }

  Future<Depth> depth({symbol, limit}) {
    return _marketServices.depth(symbol: symbol, limit: limit);
  }

  Future<List<Trades>> trades({symbol, limit}) {
    return _marketServices.trades(symbol: symbol, limit: limit);
  }

  Future<List<HistoricalTrades>> historicalTrades({symbol, limit}) {
    return _marketServices.historicalTrades(symbol: symbol, limit: limit);
  }

  Future<List<AggTrades>> aggTrades({symbol, limit}) {
    return _marketServices.aggTrades(symbol: symbol, limit: limit);
  }

  Future<List<KLines>> kLines({symbol, interval, limit}) {
    return _marketServices.kLines(
      symbol: symbol,
      interval: interval,
      limit: limit,
    );
  }

  Future<List<UiKLines>> uiKLines({symbol, interval, limit}) {
    return _marketServices.uiKLines(
      symbol: symbol,
      interval: interval,
      limit: limit,
    );
  }

  Future<AvgPrice> avgPrice({symbol}) {
    return _marketServices.avgPrice(symbol: symbol);
  }

  Future<Ticker24Hr> ticker24Hr({symbol, symbols}) {
    return _marketServices.ticker24Hr(symbol: symbol, symbols: symbols);
  }

  Future<TickerPrice> tickerPrice({symbol, symbols}) {
    return _marketServices.tickerPrice(symbol: symbol, symbols: symbols);
  }

  Future<TickerBookTicker> tickerBookTicker({symbol, symbols}) {
    return _marketServices.tickerBookTicker(
      symbol: symbol,
      symbols: symbols,
    );
  }

  Future<Ticker> ticker({symbol, symbols}) {
    return _marketServices.ticker(symbol: symbol, symbols: symbols);
  }
}
