import 'package:mobile_store/src/constant/utils/api_address.dart';

class ApiImage {
  String generateImageUrl(String fileName) {
    String baseUrl = 'http://${ApiAddress.apiAddress}/apis/file/download/';
    String encodedFileName = Uri.encodeComponent(fileName);
    return baseUrl + encodedFileName;
  }
}
