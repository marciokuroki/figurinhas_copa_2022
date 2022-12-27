import 'package:flutter/material.dart';
import 'package:number_inc_dec/number_inc_dec.dart';

class ItemFigurinha extends StatelessWidget {
  const ItemFigurinha({
    Key? key,
    required this.figurinhaLabel,
    required this.corFundo,
    required this.corTexto,
    required this.isActive,
    required this.onTap,
  }) : super(key: key);

  final String figurinhaLabel;
  final Color corFundo;
  final Color corTexto;
  final bool isActive;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      onLongPress: () => {
        showDialog(
            context: context,
            builder: (BuildContext contextInkWell) {
              return Dialog(
                child: NumberInputPrefabbed.roundedButtons(
                  controller: TextEditingController(),
                  incDecBgColor: Colors.blueAccent,
                  buttonArrangement: ButtonArrangement.incRightDecLeft,
                  min: 0,
                  incIcon: Icons.plus_one,
                  decIcon: Icons.exposure_minus_1,
                ),
              );
            })
      },
      child: Card(
        color: isActive ? corFundo : corTexto,
        child: Text(
          figurinhaLabel,
          style: TextStyle(
            fontSize: 20,
            color: isActive ? corTexto : corFundo,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
