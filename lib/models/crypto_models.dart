import 'quotes_models.dart';

class CryptoModels {
  int? id;
  String? name;
  String? symbol;
  String? slug;
  int? cmcRank;
  int? marketPairCount;
  double? circulatingSupply;
  int? selfReportedCirculatingSupply;
  double? totalSupply;
  double? maxSupply;
  double? ath;
  double? atl;
  double? high24h;
  double? low24h;
  int? isActive;
  String? lastUpdated;
  String? dateAdded;
  List<QuotesModels>? quotes;

  CryptoModels({
    required this.id,
    required this.name,
    required this.symbol,
    required this.slug,
    required this.cmcRank,
    required this.marketPairCount,
    required this.circulatingSupply,
    required this.selfReportedCirculatingSupply,
    required this.totalSupply,
    required this.maxSupply,
    required this.ath,
    required this.atl,
    required this.high24h,
    required this.low24h,
    required this.isActive,
    required this.lastUpdated,
    required this.dateAdded,
    required this.quotes,
  });

  factory CryptoModels.mapFromJson(Map<String, dynamic> mapFromJson) {
    return CryptoModels(
      id: mapFromJson['id'],
      name: mapFromJson['name'],
      symbol: mapFromJson['symbol'],
      slug: mapFromJson['slug'],
      cmcRank: mapFromJson['cmcRank'],
      marketPairCount: mapFromJson['marketPairCount'],
      circulatingSupply: mapFromJson['circulatingSupply'],
      selfReportedCirculatingSupply: mapFromJson['selfReportedCirculatingSupply'],
      totalSupply: mapFromJson['totalSupply'],
      maxSupply: mapFromJson['maxSupply'],
      ath: mapFromJson['ath'],
      atl: mapFromJson['atl'],
      high24h: mapFromJson['high24h'],
      low24h: mapFromJson['low24h'],
      isActive: mapFromJson['isActive'],
      lastUpdated: mapFromJson['lastUpdated'],
      dateAdded: mapFromJson['dateAdded'],
      quotes: mapFromJson['dateAdded'],
    );
  }
}
