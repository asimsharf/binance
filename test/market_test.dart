import 'package:binance/DL/entities/market/agg_trades.dart';
import 'package:binance/DL/entities/market/avg_price.dart';
import 'package:binance/DL/entities/market/depth.dart';
import 'package:binance/DL/entities/market/exchange_info.dart';
import 'package:binance/DL/entities/market/historical_trades.dart';
import 'package:binance/DL/entities/market/klines.dart';
import 'package:binance/DL/entities/market/ticker.dart';
import 'package:binance/DL/entities/market/ticker_24hr.dart';
import 'package:binance/DL/entities/market/ticker_bool_ticker.dart';
import 'package:binance/DL/entities/market/ticker_price.dart';
import 'package:binance/DL/entities/market/time.dart';
import 'package:binance/DL/entities/market/trades.dart';
import 'package:binance/DL/entities/market/ui_klines.dart';
import 'package:binance/DL/repositories/market_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final MarketRepository marketRepository = MarketRepository();

  test("test_ping", () async {
    int ping = await marketRepository.ping();
    expect(ping, 200);
  });

  test("test_time", () async {
    Time time = await marketRepository.time();
    expect(time, isA<Time>());
  });

  test("test_exchange_info", () async {
    ExchangeInfo exchangeInfo = await marketRepository.exchangeInfo(
      symbol: 'BTCUSDT',
    );
    expect(exchangeInfo, isA<ExchangeInfo>());
  });

  test("test_depth", () async {
    Depth depth = await marketRepository.depth(
      symbol: 'BTCUSDT',
      limit: 100,
    );
    expect(depth, isA<Depth>());
  });

  test("test_trades", () async {
    List<Trades> trades = await marketRepository.trades(
      symbol: 'BTCUSDT',
      limit: 100,
    );
    expect(trades, isA<List<Trades>>());
  });

  test("test_historical_trades", () async {
    List<HistoricalTrades> historicalTrades =
        await marketRepository.historicalTrades(
      symbol: 'BTCUSDT',
      limit: 500,
    );
    expect(historicalTrades, isA<List<HistoricalTrades>>());
  });

  test("test_agg_trades", () async {
    List<AggTrades> aggTrades = await marketRepository.aggTrades(
      symbol: 'BTCUSDT',
      limit: 500,
    );
    expect(aggTrades, isA<List<AggTrades>>());
  });

  test("test_k_lines", () async {
    List<KLines> kLines = await marketRepository.kLines(
      symbol: 'BTCUSDT',
      interval: '1s',
      limit: 500,
    );
    expect(kLines, isA<List<KLines>>());
  });

  test("test_ui_k_lines", () async {
    List<UiKLines> uiKLines = await marketRepository.uiKLines(
      symbol: 'BTCUSDT',
      interval: '1s',
      limit: 500,
    );
    expect(uiKLines, isA<List<UiKLines>>());
  });

  test("test_avg_price", () async {
    AvgPrice avgPrice = await marketRepository.avgPrice(
      symbol: 'BTCUSDT',
    );
    expect(avgPrice, isA<AvgPrice>());
  });

  test("test_ticker_24_hr", () async {
    Ticker24Hr ticker24hr = await marketRepository.ticker24Hr(
      symbol: 'BTCUSDT',
      symbols: ['BTCUSDT', 'ETHUSDT'],
    );
    expect(ticker24hr, isA<Ticker24Hr>());
  });

  test("test_ticker_price", () async {
    TickerPrice tickerPrice = await marketRepository.tickerPrice(
      symbol: 'BTCUSDT',
      symbols: ['BTCUSDT', 'ETHUSDT'],
    );

    expect(tickerPrice, isA<TickerPrice>());
  });

  test("test_ticker_book_ticker", () async {
    TickerBookTicker tickerBookTicker = await marketRepository.tickerBookTicker(
      symbol: 'BTCUSDT',
      symbols: ['BTCUSDT', 'ETHUSDT'],
    );

    expect(tickerBookTicker, isA<TickerBookTicker>());
  });

  test("test_ticker", () async {
    Ticker tickerBoolTicker = await marketRepository.ticker(
      symbol: 'BTCUSDT',
      symbols: ['BTCUSDT', 'ETHUSDT'],
    );
    expect(tickerBoolTicker, isA<Ticker>());
  });
}
