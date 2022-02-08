import 'package:facebook_interface_aula/modelos/modelos.dart';
import 'package:facebook_interface_aula/uteis/paleta_cores.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import 'botao_imagem_perfil.dart';
import 'image_perfil.dart';

class ListaOpcoes extends StatelessWidget {
  final Usuario usuario;
  final List<List> _opcoes = const [
    [LineIcons.userFriends, PaletaCores.azulFacebook, "Amigos"],
    [LineIcons.facebookMessenger, PaletaCores.azulFacebook, "Mensagens"],
    [LineIcons.flag, PaletaCores.azulFacebook, "Páginas"],
    [LineIcons.users, PaletaCores.azulFacebook, "Grupos"],
    [Icons.storefront_outlined, PaletaCores.azulFacebook, "Markteplace"],
    [Icons.ondemand_video, PaletaCores.azulFacebook, "Assistir"],
    [LineIcons.calendar, PaletaCores.azulFacebook, "Eventos"],
    [LineIcons.chevronCircleDown, PaletaCores.azulFacebook, "Ver mais"],
  ];
  ListaOpcoes({Key? key, required this.usuario}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          padding: EdgeInsets.symmetric(vertical: 10),
          itemCount: 1 + _opcoes.length,
          itemBuilder: (context, indice) {
            if (indice == 0) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 6),
                child: BotaoImagemPerfil(usuario: usuario, onTap: () {}),
              );
            }

            List item = _opcoes[indice - 1];
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 6),
              child: Opcao(
                icone: item[0],
                cor: item[1],
                texto: item[2],
                onTap: () {},
              ),
            );
          }),
    );
  }
}

class Opcao extends StatelessWidget {
  final IconData icone;
  final Color cor;
  final String texto;
  final VoidCallback onTap;

  const Opcao(
      {Key? key,
      required this.icone,
      required this.cor,
      required this.texto,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icone,
            color: cor,
            size: 35,
          ),
          const SizedBox(width: 4),
          Flexible(
            child: Text(
              texto,
              style: TextStyle(fontSize: 16),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
