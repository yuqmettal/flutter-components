import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.photo_album,
              color: Colors.blue,
            ),
            title: Text('Este es el titulo de la tarjeta'),
            subtitle: Text(
                'Aqui estamos con la descripcion de la tarjeta que quiero que uds vean para tener una idea de lo que quiero mostrareles'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(onPressed: () {}, child: Text('Cancelar')),
              FlatButton(onPressed: () {}, child: Text('Ok')),
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    final card = Container(
      child: Column(
        children: <Widget>[
          FadeInImage(
            placeholder: AssetImage('assets/fade.gif'),
            image: NetworkImage(
                'https://www.clave.com.ec/wp-content/uploads/2019/10/MG_2293.jpg'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 250.0,
            fit: BoxFit.cover,
          ),
          // Image(image: NetworkImage('https://www.clave.com.ec/wp-content/uploads/2019/10/MG_2293.jpg')),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Este va a ser un titulo chingon'),
          )
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: <BoxShadow> [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            spreadRadius: 2,
            offset: Offset(2, 12),
          )
        ]
      ),
      child: ClipRRect(
        child: card,
        borderRadius: BorderRadius.circular(30),
      ),
    );
  }
}
