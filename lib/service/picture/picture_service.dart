import 'package:dio/dio.dart';

class PictureService {
  final Dio _dio = Dio();

  // Fungsi untuk mengambil gambar dengan pagination
  Future<List<dynamic>> fetchPictures({int page = 1, int limit = 10}) async {
    try {
      // Menambahkan parameter page dan limit ke URL
      final response = await _dio.get('https://picsum.photos/v2/list', queryParameters: {
        'page': page,
        'limit': limit,
      });
      return response.data;
    } catch (e) {
      throw Exception('Failed to load pictures: $e');
    }
  }

  // Fungsi untuk mengambil detail gambar berdasarkan ID
  Future<Map<String, dynamic>> fetchPictureDetail(String id) async {
    try {
      final response = await _dio.get('https://picsum.photos/id/$id/info');
      return response.data;
    } catch (e) {
      throw Exception('Failed to load picture detail: $e');
    }
  }
}