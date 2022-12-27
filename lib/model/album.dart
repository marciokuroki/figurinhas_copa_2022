import 'package:figurinhas_copa_2022/model/figurinha.dart';

class Album {
  final List<Figurinha> figurinhas;
  final Map<Figurinha, int> repetidas;

  Album(this.figurinhas, this.repetidas);
}
