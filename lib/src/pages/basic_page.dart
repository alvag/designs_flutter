import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  final stylesTitle = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final stylesSubtitle = TextStyle(fontSize: 18.0, color: Colors.grey);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: <Widget>[
        _image(),
        _title(),
        _actions(),
        _text(),
        _text(),
        _text(),
      ]),
    ));
  }

  Widget _image() {
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage(
            'https://www.dzoom.org.es/wp-content/uploads/2017/07/seebensee-2384369-810x540.jpg'),
        fit: BoxFit.cover,
        height: 200.0,
      ),
    );
  }

  Widget _title() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Paisaje y lago', style: stylesTitle),
                  SizedBox(height: 7.0),
                  Text('Lago cerca de montañas', style: stylesSubtitle)
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
              size: 30.0,
            ),
            Text('42', style: TextStyle(fontSize: 20.0))
          ],
        ),
      ),
    );
  }

  Widget _actions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _itemAction(Icons.call, 'CALL'),
        _itemAction(Icons.near_me, 'ROUTE'),
        _itemAction(Icons.share, 'SHARE'),
      ],
    );
  }

  Widget _itemAction(IconData icon, String text) {
    return Column(
      children: <Widget>[
        Icon(icon, color: Colors.blue, size: 40.0),
        SizedBox(height: 5.0),
        Text(
          text,
          style: TextStyle(fontSize: 15.0, color: Colors.blue),
        ),
      ],
    );
  }

  Widget _text() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus consequat turpis non posuere accumsan. Maecenas tristique pretium purus, sed auctor ligula semper eget. Ut quis laoreet nisl. Aenean imperdiet convallis dui id tincidunt. Praesent dapibus sapien quam, nec vestibulum nibh pulvinar sed. Mauris hendrerit ut velit vel tincidunt. Nullam hendrerit vel erat id commodo. Mauris nec urna quis lectus placerat suscipit nec at nisl. Curabitur eu tempor tortor.',
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }
}
