import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButton(
          color: Color(0xFF637375),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('asset/new1.jpg'),
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(24),
        child: Wrap(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        'Stallion Chair',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF637375),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: const <Widget>[
                          Icon(
                            Icons.attach_money,
                            color: Color(0xFF637375),
                          ),
                          Text(
                            '199',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF637375),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      const Text(
                        "Paired alongside the Stallion bed, this cleverly designed to allow easy access to the bed's storage drawers without having to move any furniture.",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF637375),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                Column(
                  children: <Widget>[
                    Container(
                      height: 64,
                      width: 64,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(18),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 2,
                            blurRadius: 6,
                            offset: const Offset(0, 5),
                          ),
                        ],
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite_border,
                          color: Color(0xFF637375),
                        ),
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Container(
                      height: 64,
                      width: 64,
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(18),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 2,
                            blurRadius: 6,
                            offset: const Offset(0, 5),
                          ),
                        ],
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.shopping_bag_outlined,
                          color: Color(0xFF637375),
                        ),
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
