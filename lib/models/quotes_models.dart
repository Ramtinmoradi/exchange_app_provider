class QuotesModels {
  String? name;
  double? price;
  double? volume24h;
  double? volume7d;
  double? volume30d;
  double? marketCap;
  double? selfReportedMarketCap;
  double? percentChange1h;
  double? percentChange24h;
  double? percentChange7d;
  String? lastUpdated;
  double? percentChange30d;
  double? percentChange60d;
  double? percentChange90d;
  double? fullyDilluttedMarketCap;
  double? marketCapByTotalSupply;
  double? dominance;
  double? turnover;
  double? ytdPriceChangePercentage;
  double? percentChange1y;

  QuotesModels({
    required this.name,
    required this.price,
    required this.volume24h,
    required this.volume7d,
    required this.volume30d,
    required this.marketCap,
    required this.selfReportedMarketCap,
    required this.percentChange1h,
    required this.percentChange24h,
    required this.percentChange7d,
    required this.lastUpdated,
    required this.percentChange30d,
    required this.percentChange60d,
    required this.percentChange90d,
    required this.fullyDilluttedMarketCap,
    required this.marketCapByTotalSupply,
    required this.dominance,
    required this.turnover,
    required this.ytdPriceChangePercentage,
    required this.percentChange1y,
  });

  factory QuotesModels.mapFromJson(Map<String, dynamic> mapFromJson) {
    return QuotesModels(
      name: mapFromJson['name'],
      price: mapFromJson['price'],
      volume24h: mapFromJson['volume24h'],
      volume7d: mapFromJson['volume7d'],
      volume30d: mapFromJson['volume30d'],
      marketCap: mapFromJson['marketCap'],
      selfReportedMarketCap: mapFromJson['selfReportedMarketCap'],
      percentChange1h: mapFromJson['percentChange1h'],
      percentChange24h: mapFromJson['percentChange24h'],
      percentChange7d: mapFromJson['percentChange7d'],
      lastUpdated: mapFromJson['lastUpdated'],
      percentChange30d: mapFromJson['percentChange30d'],
      percentChange60d: mapFromJson['percentChange60d'],
      percentChange90d: mapFromJson['percentChange90d'],
      fullyDilluttedMarketCap: mapFromJson['fullyDilluttedMarketCap'],
      marketCapByTotalSupply: mapFromJson['marketCapByTotalSupply'],
      dominance: mapFromJson['dominance'],
      turnover: mapFromJson['turnover'],
      ytdPriceChangePercentage: mapFromJson['ytdPriceChangePercentage'],
      percentChange1y: mapFromJson['percentChange1y'],
    );
  }
}
