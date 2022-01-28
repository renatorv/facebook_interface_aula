import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImagePerfil extends StatelessWidget {
  final String urlIamgem;
  final bool foiVisualizado;

  const ImagePerfil({
    Key? key,
    required this.urlIamgem,
    this.foiVisualizado = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 22,
      child: CircleAvatar(
        radius: foiVisualizado ? 22 : 18,
        backgroundImage: CachedNetworkImageProvider(urlIamgem),
        backgroundColor: Colors.grey[200],
      ),
    );
  }
}
