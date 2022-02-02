import 'package:facebook_interface_aula/componentes/image_perfil.dart';
import 'package:facebook_interface_aula/modelos/modelos.dart';
import 'package:flutter/material.dart';

class BotaoImagemPerfil extends StatelessWidget {
  final Usuario usuario;
  final VoidCallback onTap;
  const BotaoImagemPerfil({
    Key? key,
    required this.usuario,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: onTap,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ImagePerfil(
              urlIamgem: usuario.urlImagem,
              foiVisualizado: true,
            ),
            const SizedBox(width: 4),
            Flexible(
              child: Text(
                usuario.nome,
                style: TextStyle(fontSize: 16),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
