import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_interface_aula/componentes/image_perfil.dart';
import 'package:facebook_interface_aula/modelos/modelos.dart';
import 'package:facebook_interface_aula/uteis/paleta_cores.dart';
import 'package:facebook_interface_aula/uteis/responsivo.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class CartaoPostagem extends StatelessWidget {
  final Postagem postagem;

  const CartaoPostagem({
    Key? key,
    required this.postagem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDesktop = Responsivo.isDesktop(context);
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: isDesktop ? 5 : 0),
      elevation: isDesktop ? 1 : 0,
      shape: isDesktop
          ? RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
          : null,
      child: Container(
        color: Colors.white,
        margin: EdgeInsets.symmetric(vertical: 8),
        padding: EdgeInsets.symmetric(vertical: 8),
        child: Column(
          children: [
            // Cabeçalho
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CabecalhoPostagem(
                    postagem: postagem,
                  ),
                  Text(postagem.descricao),
                ],
              ),
            ),

            // Imagem postagem
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: CachedNetworkImage(imageUrl: postagem.urlImagem),
            ),

            // Área de estátisticas
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: EstatisticasPostagem(postagem: postagem),
            ),
          ],
        ),
      ),
    );
  }
}

class EstatisticasPostagem extends StatelessWidget {
  final Postagem postagem;
  const EstatisticasPostagem({Key? key, required this.postagem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: PaletaCores.azulFacebook,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.thumb_up,
                size: 12,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 4),
            Text(
              '${postagem.curtidas}',
              style: TextStyle(
                color: Colors.grey[700],
              ),
            ),
            SizedBox(width: 4),
            Text(
              '${postagem.comentarios} comentários',
              style: TextStyle(
                color: Colors.grey[700],
              ),
            ),
            SizedBox(width: 8),
            Text(
              '${postagem.compartilhamentos} compartilhamentos',
              style: TextStyle(
                color: Colors.grey[700],
              ),
            )
          ],
        ),
        Divider(
          thickness: 1.2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BotoaPostagem(
              icone: Icon(
                LineIcons.thumbsUpAlt,
                color: Colors.grey[700],
              ),
              texto: 'Curtir',
              onTap: () {},
            ),
            BotoaPostagem(
              icone: Icon(
                LineIcons.alternateCommentAlt,
                color: Colors.grey[700],
              ),
              texto: 'Comentar',
              onTap: () {},
            ),
            BotoaPostagem(
              icone: Icon(
                LineIcons.share,
                color: Colors.grey[700],
              ),
              texto: 'Compartilhar',
              onTap: () {},
            ),
          ],
        ),
      ],
    );
  }
}

class BotoaPostagem extends StatelessWidget {
  final Icon icone;
  final String texto;
  final VoidCallback onTap;

  const BotoaPostagem({
    Key? key,
    required this.icone,
    required this.texto,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: onTap,
        child: Container(
          child: Row(
            children: [
              icone,
              SizedBox(width: 2),
              Text(
                texto,
                style: TextStyle(
                  color: Colors.grey[700],
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CabecalhoPostagem extends StatelessWidget {
  final Postagem postagem;

  const CabecalhoPostagem({Key? key, required this.postagem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ImagePerfil(
          urlIamgem: postagem.usuario.urlImagem,
          foiVisualizado: true,
        ),
        SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                postagem.usuario.nome,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Text('${postagem.tempoAtras} - '),
                  Icon(
                    Icons.public,
                    size: 12,
                    color: Colors.grey[600],
                  ),
                ],
              ),
            ],
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.more_horiz),
        ),
      ],
    );
  }
}
