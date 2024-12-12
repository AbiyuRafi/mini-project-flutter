import 'package:flutter/material.dart';

class DetailContentWidget extends StatelessWidget {
  final String imageUrl;
  final String author;

  DetailContentWidget({
    required this.imageUrl,
    required this.author,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Icon(Icons.error);  // Menampilkan ikon error jika gambar gagal dimuat
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Taken by: $author',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
