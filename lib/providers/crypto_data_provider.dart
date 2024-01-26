import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider_test_project/api/get_api.dart';
import 'package:provider_test_project/models/all_crypto_models.dart';
import 'package:provider_test_project/models/crypto_models.dart';
import 'package:provider_test_project/models/response_models.dart';

class CryptoDataProvider extends ChangeNotifier {
  final GetApi _getApi = GetApi();

  late AllCryptoModels allCryptoModels;
  late CryptoModels cryptoModels;
  late ResponseModels responseModels;
  var response;

  getTopMarketCapData() async {
    responseModels = ResponseModels.loading('Loading...');

    try {
      response = await Dio().get(
        "https://api.coinmarketcap.com/data-api/v3/cryptocurrency/listing?start=1&limit=1000&sortBy=market_cap&sortType=desc&convert=USD&cryptoType=all&tagType=all&audited=false&aux=ath,atl,high24h,low24h,num_market_pairs,cmc_rank,date_added,max_supply,circulating_supply,total_supply,volume_7d,volume_30d,self_reported_circulating_supply,self_reported_market_cap",
      );

      if (response.statusCode == 200) {
        allCryptoModels = AllCryptoModels.mapFromJson(response.data);
        responseModels = ResponseModels.completed(allCryptoModels);
      } else {
        responseModels = ResponseModels.error('Please try later ...');
      }
      notifyListeners();
    } on DioException catch (exception) {
      responseModels = ResponseModels.error(
        '${exception.response?.statusCode} \n ${exception.response?.statusMessage}',
      );
      notifyListeners();
    } catch (exception) {
      responseModels = ResponseModels.error('Check your connections ... \n statusCode: ${response.statusCode}');
      notifyListeners();
    }
  }
}
