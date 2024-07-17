
import 'package:appwrite/appwrite.dart';
import 'dart:developer';

class AppWrite {
  static final _client = Client();
  static final _database = Databases(_client);

  static void init(){
  _client
    .setEndpoint('https://cloud.appwrite.io/v1')
    .setProject('669747d00010c9d03dfc')
    .setSelfSigned(status: true); // For self signed certificates, only use for development
    getMusic();
  }
  
static Future<Map<String, dynamic>?> getMusic() async {
    try {
      final response = await _database.getDocument(
        databaseId: "669747ea00315bde8450",
        collectionId: "66974809002e80ac3434",
        documentId: "66975be800345394ffe9",
      );
      log(response.data.toString());
      return response.data;
    } catch (e) {
      log('$e');
      return null;
    }
  }

}
