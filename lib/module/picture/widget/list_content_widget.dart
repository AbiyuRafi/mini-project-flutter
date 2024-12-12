import 'package:flutter/material.dart';

class ListContentWidget extends StatelessWidget {
  final String imageUrl;
  final String author;
  final VoidCallback onTap;

  ListContentWidget({
    required this.imageUrl,
    required this.author,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              imageUrl,
              height: 200,  // Pastikan ukuran gambar cukup
              fit: BoxFit.cover,  // Menjaga gambar tetap proporsional
              errorBuilder: (context, error, stackTrace) {
                return Icon(Icons.error);  // Menampilkan ikon error jika gambar gagal dimuat
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'by: $author',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
