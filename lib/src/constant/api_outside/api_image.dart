class ApiImage {
  String generateImageUrl(String fileName) {
    String baseUrl = 'http://192.168.1.6:8085/apis/file/download/';
    String encodedFileName = Uri.encodeComponent(fileName);
    return baseUrl + encodedFileName;
  }
}

