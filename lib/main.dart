import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Bag',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: buildAppBar(_size),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: _size.height * 0.02, vertical: _size.width * 0.02),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              _FirstBox(size: _size),
              const SizedBox(
                height: 20,
              ),
              const UnratedOrders(),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _secondBox(_size),
                    const SizedBox(
                      width: 5,
                    ),
                    _secondBox(_size),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const _OrderInfo(),
              const SizedBox(
                height: 20,
              ),
              const _ThirdBox(),
              const SizedBox(height: 400)
            ],
          ),
        ),
      ),
    );
  }

  Container _secondBox(Size _size) {
    return Container(
      height: 180,
      width: _size.width * 0.75,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: const DecorationImage(
                      image: AssetImage(
                    'Assets/background.jpg',
                  )),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Burger King',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    'Burger King - Esenyurt',
                    style: TextStyle(fontSize: 15, color: Colors.grey.shade800),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            'Speed',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: const [
              _SmallBox(
                color: Colors.red,
                num: '1',
              ),
              SizedBox(
                width: 5,
              ),
              _SmallBox(
                color: Colors.red,
                num: '2',
              ),
              SizedBox(
                width: 5,
              ),
              _SmallBox(
                color: Colors.yellow,
                num: '3',
              ),
              SizedBox(
                width: 5,
              ),
              _SmallBox(
                color: Colors.yellow,
                num: '4',
              ),
              SizedBox(
                width: 5,
              ),
              _SmallBox(
                color: Colors.green,
                num: '5',
              ),
              SizedBox(
                width: 5,
              ),
              _SmallBox(
                color: Colors.green,
                num: '6',
              ),
            ],
          ),
        ],
      ),
    );
  }

  AppBar buildAppBar(Size size) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0,
      // leading: Icon(
      //   Icons.close,
      //   color: Colors.grey.shade700,
      // ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            Icons.close,
            color: Colors.grey.shade700,
          ),
          SizedBox(
            width: size.width / 5,
          ),
          const Text(
            'Enjoy',
            style: TextStyle(color: Colors.red, fontSize: 20),
          ),
          const Text(
            ' Your Meal',
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
        ],
      ),
    );
  }
}

class _ThirdBox extends StatelessWidget {
  const _ThirdBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}

class _OrderInfo extends StatelessWidget {
  const _OrderInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Order Information',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    );
  }
}

class _SmallBox extends StatelessWidget {
  final Color color;
  final String num;
  const _SmallBox({Key? key, required this.color, required this.num})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 35,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(
          color: color,
          width: 1.5,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
          child: Text(
        num,
        style: const TextStyle(fontWeight: FontWeight.bold),
      )),
    );
  }
}

class UnratedOrders extends StatelessWidget {
  const UnratedOrders({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Text(
          'You Have ',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          '9 ',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
        ),
        Text(
          'Unrated Orders',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class _FirstBox extends StatelessWidget {
  const _FirstBox({
    Key? key,
    required Size size,
  })  : _size = size,
        super(key: key);

  final Size _size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      width: _size.width,
      decoration: BoxDecoration(
        color: Colors.green.shade400,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              Icon(
                Icons.check_box,
                size: 30,
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'We Have Received Your Order.\nThank You',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    height: 1.5),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
