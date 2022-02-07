import 'package:facebook_interface_aula/telas/principal.dart';
import 'package:facebook_interface_aula/uteis/paleta_cores.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
          fontFamily: 'Nunito', scaffoldBackgroundColor: PaletaCores.scaffold),
      title: 'FaceBook',
      debugShowCheckedModeBanner: false,
      // home: Home(),
      home: Principal(),
    ),
  );
}

// TESTAR
// https://fonts.google.com/specimen/Cookie?preview.text=Instagram&preview.text_type=custom
// https://fonts.google.com/specimen/Quintessential?preview.text=Instagram&preview.text_type=custom

// https://fiodevida.com/aprenda-as-caracteristicas-especificas-das-paletas-de-cores-de-azul-medio-a-escuro/
// https://www.canva.com/pt_br/aprenda/cores-para-sites-50-paginas-impactantes/


// https://superdevresources.com/best-free-fonts-for-apps-and-websites/
// https://www.fontsquirrel.com/fonts/list/classification/sans%20serif
// https://www.dafont.com/pt/theme.php?cat=114
// https://www.urbanfonts.com/fonts/typewriter-fonts.htm
// https://fonts.google.com/
// https://www.mockplus.com/blog/post/best-font-for-mobile-app => Testar Nunito


// LINKS
// https://github.com/abuanwar072/E-commerce-Complete-Flutter-UI
// https://github.com/RivaanRanawat/instagram-flutter-clone
// https://www.interviewbit.com/blog/flutter-projects/?amp=1#11-instagram-clone
// https://medium.com/@karangore518/flutter-with-getx-8d91aa9649f3
// https://pt.stackoverflow.com/questions/397790/flutter-tela-de-login



/// FONTES PARA O TÍTULO
/// https://fonts.google.com/specimen/Berkshire+Swash?preview.text=Petgram&preview.text_type=custom
/// https://fonts.google.com/specimen/Kurale?preview.text=Petgram&preview.text_type=custom
/// https://fonts.google.com/specimen/Lobster?preview.text=Petgram&preview.text_type=custom&category=Display#standard-styles
/// https://fonts.google.com/specimen/Sansita+Swashed?preview.text=Petgram&preview.text_type=custom&category=Display