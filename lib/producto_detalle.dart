import 'package:flutter/material.dart';

class ProductoDetalle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    //Marca
    final marca = Row(
      children: [
        Container(
          margin: EdgeInsets.only(top: 300.0, left: 20.0, right: 20.0),
          child: Text(
            "PUMA", //Marca
            style: TextStyle(
              fontFamily: "Lato",
              fontSize: 30.0,
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.left,
          ),
        ),

      ],
    );

    //Marca
    final modelo = Row(
      children: [
        Container(
          margin: EdgeInsets.only( left: 20.0, right: 20.0),
          child: Text(
            "Basket Heart Ath Lux Wn'ss", // modelo
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.left,
          ),
        ),

      ],
    );

    final codigo = Row(
      children: [
        Container(
          margin: EdgeInsets.only( left: 20.0, right: 20.0),
          child: Text(
            "36672801", // codigo
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.left,
          ),
        ),

      ],
    );
    final precio = Row(
      children: [
        Container(
          margin: EdgeInsets.only( left: 20.0, right: 20.0),
          child: Text(
            "900", // precio
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.left,
          ),
        ),

      ],
    );

    final tallas = Row(
      children: [
        Container(
          margin: EdgeInsets.only( left: 20.0, right: 20.0),
          child: Text(
            "TALLA / DISPONIBLE", // precio
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.left,
          ),
        ),

      ],
    );

    final MEDIDAS = Row(
      children: [
        Container(
          margin: EdgeInsets.only( left: 20.0, right: 20.0),
          child: Text(
            "MX 25:" + "1", // precio
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Container(

          child: Text(
            "MX 26", // precio
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
    final descripcion = Column(
      children: [marca, modelo, codigo, precio, tallas, MEDIDAS],
    );

    return descripcion;
  }
}
