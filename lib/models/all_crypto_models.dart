import 'package:provider_test_project/models/crypto_models.dart';
import 'package:provider_test_project/models/status_models.dart';

class AllCryptoModels {
  StatusModels? statusModels;
  List<CryptoModels>? cryptoModels;
  int? totalCount;

  AllCryptoModels({
    required this.statusModels,
    required this.cryptoModels,
    required this.totalCount,
  });

  factory AllCryptoModels.mapFromJson(Map<String, dynamic> mapFromJson) {
    return AllCryptoModels(
      statusModels: mapFromJson['status'],
      cryptoModels: mapFromJson['data']['cryptoCurrencyList'],
      totalCount: mapFromJson['data']['totalCount'],
    );
  }
}
