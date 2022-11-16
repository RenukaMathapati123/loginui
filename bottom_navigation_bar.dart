import 'package:flutter/material.dart';
import 'package:flutter_phonex/page1.dart';


class MyStatefulWidget extends StatefulWidget {
MyStatefulWidget({Key? key}) : super(key: key);

@override
_MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
int _selectedIndex = 0;
static const TextStyle optionStyle =
TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
static const List<Widget> _widgetOptions = <Widget>[
	// Text(
	// 'HOME PAGE',
	// style: optionStyle,
	// ),
	// Text(
	// 'COURSE PAGE',
	// style: optionStyle,
	// ),
	// Text(
	// 'CONTACT GFG',
	// style: optionStyle,
	// ),
  Page1(),
];

void _onItemTapped(int index) {
	setState(() {
	_selectedIndex = index;
	});
}

@override
Widget build(BuildContext context) {
	return Scaffold(
	appBar: AppBar(
		title: const Text('GeeksForGeeks'),
		backgroundColor: Colors.green,
	),
	body: Center(
		child: _widgetOptions.elementAt(_selectedIndex),
	),
	bottomNavigationBar: BottomNavigationBar(
		items: const <BottomNavigationBarItem>[
		BottomNavigationBarItem(
			icon: Icon(Icons.home),
			label: 'Home',
		),
		BottomNavigationBarItem(
			icon: Icon(Icons.bookmark),
			label: 'Courses',
		),
		BottomNavigationBarItem(
			icon: Icon(Icons.contact_mail),
			label: 'Mail',
		),
		],
		currentIndex: _selectedIndex,
		selectedItemColor: Colors.amber[800],
		onTap: _onItemTapped,
	),
	);
}
}
