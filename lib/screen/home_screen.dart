import 'package:flutter/material.dart';
import 'package:furniture_catalogue_ui/screen/detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: Colors.white,
              pinned: false,
              snap: false,
              floating: false,
              title: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.short_text_rounded,
                        color: Color(0xFF637375),
                        size: 32,
                      ),
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.shopping_bag_outlined,
                        color: Color(0xFF637375),
                      ),
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                    ),
                  ],
                ),
              ),
            ),
            SliverPersistentHeader(
              pinned: true,
              delegate: Header(),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Padding(
                    padding: const EdgeInsets.all(24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const <Widget>[
                        Text(
                          'New',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFe8be38),
                          ),
                        ),
                        SizedBox(width: 24),
                        Text(
                          'Popular',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF637375),
                          ),
                        ),
                        SizedBox(width: 24),
                        Text(
                          'Sale',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF637375),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        const SizedBox(width: 24),
                        newProduct('new1', '199'),
                        newProduct('new2', '299'),
                        newProduct('new3', '399'),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(24),
                    child: Text(
                      'Categories',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF637375),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 120,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        const SizedBox(width: 24),
                        categories('tag1', 'Chairs'),
                        categories('tag2', 'Lamps'),
                        categories('tag3', 'Tables'),
                        categories('tag4', 'Wardobe'),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(24),
                    child: Text(
                      'All Products',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF637375),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              sliver: SliverGrid(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  mainAxisSpacing: 24,
                  crossAxisSpacing: 24,
                  childAspectRatio: 3 / 4,
                ),
                delegate: SliverChildListDelegate(
                  [
                    allProducts('new1', '199'),
                    allProducts('tag1', '199'),
                    allProducts('new2', '299'),
                    allProducts('tag2', '199'),
                    allProducts('new3', '399'),
                    allProducts('tag3', '199'),
                    allProducts('new4', '199'),
                    allProducts('tag4', '199'),
                  ],
                ),
              ),
            ),
            const SliverPadding(
              padding: EdgeInsets.all(24),
            ),
          ],
        ),
      ),
    );
  }

  InkWell newProduct(String img, String price) {
    return InkWell(
      child: AspectRatio(
        aspectRatio: 3 / 4,
        child: GestureDetector(
          child: Container(
            margin: const EdgeInsets.only(right: 24, bottom: 24),
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
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFecf5f6),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(18),
                        topRight: Radius.circular(18),
                      ),
                      image: DecorationImage(
                        image: AssetImage('asset/$img.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),

                // Text
                Container(
                  alignment: Alignment.centerLeft,
                  height: 64,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          children: <Widget>[
                            const Icon(
                              Icons.attach_money,
                              color: Color(0xFF637375),
                            ),
                            Text(
                              price,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF637375),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DetailScreen(),
              ),
            );
          },
        ),
      ),
    );
  }

  InkWell categories(String img, String price) {
    return InkWell(
      child: AspectRatio(
        aspectRatio: 1 / 1,
        child: Container(
          margin: const EdgeInsets.only(right: 24),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(18),
            ),
          ),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFecf5f6),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(18),
                      topRight: Radius.circular(18),
                    ),
                    image: DecorationImage(
                      image: AssetImage('asset/$img.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),

              // Text
              Container(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        price,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Color(0xFF778587),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  InkWell allProducts(String img, String price) {
    return InkWell(
      child: Container(
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
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFecf5f6),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(18),
                    topRight: Radius.circular(18),
                  ),
                  image: DecorationImage(
                    image: AssetImage('asset/$img.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            // Text
            Container(
              alignment: Alignment.centerLeft,
              height: 64,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: <Widget>[
                        const Icon(
                          Icons.attach_money,
                          color: Color(0xFF637375),
                        ),
                        Text(
                          price,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF637375),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Header extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.white,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Container(
              height: 48,
              padding: const EdgeInsets.symmetric(horizontal: 24),
              decoration: const BoxDecoration(
                color: Color(0xFFecf5f6),
                borderRadius: BorderRadius.all(
                  Radius.circular(18),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const <Widget>[
                  Text(
                    'Search',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF637375),
                    ),
                  ),
                  Icon(
                    Icons.search,
                    color: Color(0xFF637375),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 10),
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color(0xFFecf5f6),
                width: 2.5,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(18),
              ),
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.settings_outlined,
                color: Color(0xFF637375),
              ),
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
            ),
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => 64;

  @override
  double get minExtent => 64;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
