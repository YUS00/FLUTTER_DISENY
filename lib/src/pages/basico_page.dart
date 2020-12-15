import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          _crearImagen(context),
          _crearTitulo(),
          _crearAcciones(),
          _crearTexto()
        ],
      ),
    ));
  }

  Widget _crearImagen(BuildContext context) {
    return Container(
      width: double.infinity,
      child: GestureDetector(
        onTap: () => Navigator.pushNamed(context, 'scroll'),
        child: Image(
          image: NetworkImage(
              'https://ep01.epimg.net/elviajero/imagenes/2018/04/11/actualidad/1523455444_555354_1523458466_noticia_normal.jpg'),
          height: 200.0,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _crearTitulo() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('EL PARAISO', style: estiloTitulo),
                  SizedBox(height: 7.0),
                  Text('Un lago en la ANTARTIDA', style: estiloSubTitulo),
                ],
              ),
            ),
            Icon(Icons.face, color: Colors.blue, size: 30.0),
            Text('100', style: TextStyle(fontSize: 20.0))
          ],
        ),
      ),
    );
  }

  Widget _crearAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _accion(Icons.call, 'TRUCA'),
        _accion(Icons.near_me, 'COM ARRIABRI'),
        _accion(Icons.share, 'COMPARTEIX'),
      ],
    );
  }

  Widget _accion(IconData icon, String texto) {
    return Column(
      children: <Widget>[
        Icon(icon, color: Colors.blue, size: 40.0),
        SizedBox(height: 5.0),
        Text(
          texto,
          style: TextStyle(fontSize: 15.0, color: Colors.blue),
        )
      ],
    );
  }

  Widget _crearTexto() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: Text(
          'MENOS TEXTO Y SOLO PA DECIR LO IMPORANTE,AUPA FLUTTER',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
