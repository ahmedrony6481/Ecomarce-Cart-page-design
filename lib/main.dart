import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    tabController = TabController(vsync: this, length: 4);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: <Widget>[
            SizedBox(height: 15.0),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(right: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.menu),
                    onPressed: () {},
                  ),
                  FloatingActionButton(
                      onPressed: () {},
                      backgroundColor: Colors.grey.withOpacity(0.3),
                      mini: true,
                      elevation: 0.0,
                      child: Icon(Icons.shopping_cart,
                          color: Colors.black, size: 17.0)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Text(
                'Best Selling',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 40.0,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: TabBar(
                controller: tabController,
                indicatorColor: Colors.transparent,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey.withOpacity(0.5),
                isScrollable: true,
                tabs: <Widget>[
                  Tab(
                    child: Text(
                      'Top',
                      style: TextStyle(
                          fontSize: 17.0,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Outdoor',
                      style: TextStyle(
                          fontSize: 17.0,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Indoor',
                      style: TextStyle(
                          fontSize: 17.0,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Plants',
                      style: TextStyle(
                          fontSize: 17.0,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color(0xFF399D63),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height / 2,
                  child: Container(
                    height: MediaQuery.of(context).size.height / 2,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0)
                      ),
                      color: Colors.white
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 10,
                    left: MediaQuery.of(context).size.width / 60
                  ),
                  child: FloatingActionButton(
                    onPressed: (){},
                    backgroundColor: Color(0xFF4DA774),
                    mini: true,
                    elevation: 0.0,
                    child: Icon(Icons.add_shopping_cart,size: 15.0,color: Colors.white,),
                  ),
                ),
                Positioned(
                  top: 11.0,
                  left: MediaQuery.of(context).size.width - 30.0,
                  child: Container(
                    height: 19,
                    width: 19,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white
                    ),
                    child: Center(
                      child: Text(
                        '1',
                        style: TextStyle(color: Color(0xFF399D63)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 25,
                    top: 60,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Home Decor',
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF8AC7A4),
                        ),
                      ),
                      Text(
                        'Pillow Plant',
                        style: TextStyle(
                            fontSize: 45.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      SizedBox(height: 15.0),
                      Text(
                        'FROM',
                        style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF8AC7A4)),
                      ),
                      Text(
                        '\$30',
                        style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                      ),
                      SizedBox(height: 15.0),
                      Text(
                        'SIZES',
                        style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF8AC7A4)),
                      ),
                      Text(
                        'Small',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 25.0,
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                      ),
                      SizedBox(height: 10.0),
                      Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            color: Colors.black),
                        child: Center(
                          child: Icon(Icons.shopping_cart, color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: (MediaQuery.of(context).size.height / 2) - 310.0,
                  left: (MediaQuery.of(context).size.width / 2) - 65.0,
                  child: Image(
                    image: NetworkImage('https://i2.paste.pics/FRUD5.png'),
                    fit: BoxFit.fitHeight,
                    height: 400,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height - 275.0,
                      left: 20.0,
                      right: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('All to know...',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 25.0
                      ),
                      ),
                        SizedBox(height: 12.0),
                        Text(
                          'If you are completely new to houseplants then Ficus is a brilliant first plant to adopt, it is very easy to look after and won\'t occupy too much space.',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 30.0),
                        Text(
                          'Details',
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'Plant height: 35-45cm;',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Pillow width: 12cm',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold
                          ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                  onPressed: (){},
                  child: Icon(Icons.shopping_cart,
                  size: 20,
                  ),
                  mini: true,
                  elevation: 0.0,
                ),
              ],
            )
          ],
        ),
    );
  }
}