import 'package:flutter/material.dart';
import 'package:m_touch_labs/garage.dart';
import 'package:m_touch_labs/market.dart';
import 'package:m_touch_labs/rides.dart';
import 'package:m_touch_labs/stories.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  int _currentIndex = 0;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _names.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  final List<String> _names = ["Rides", "Stories", "Market", "Garage"];
  final List<Widget> _pages = [Rides(), Stories(), Market(), Garage()];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Preetham", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.redAccent,
        leading: const Icon(Icons.menu, color: Colors.white),
        actions: [
          Image.asset(
            "assets/img/hp_logo-removebg-preview.png",
            height: screenHeight * 0.05,
            width: screenHeight * 0.05,
          ),
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.white),
            onPressed: () {},
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: screenHeight * 0.05,
              width: screenHeight * 0.08,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white24,
              ),
              child: const Center(
                child: Text(
                  "SOS",
                  style: TextStyle(
                    letterSpacing: 1.5,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: NestedScrollView(
        headerSliverBuilder:
            (context, innerBoxIsScrolled) => [
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      // Top image and register now button
                      Container(
                        height: screenHeight * 0.25,
                        width: screenWidth,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage("assets/img/rider_1.jpg"),
                            fit: BoxFit.fill,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  "Bike Trip To Goa in 4 Days",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                  height: screenHeight * 0.05,
                                  width: screenHeight * 0.2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.yellowAccent,
                                  ),
                                  child: Center(
                                    child: const Text(
                                      "Register Now",
                                      style: TextStyle(
                                        letterSpacing: 1.5,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(height: 10),
                      Text(
                        "Events For You",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),

                      // Another banner card
                      Container(
                        height: screenHeight * 0.25,
                        width: screenWidth,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage(
                              "assets/img/rider_img_2 _m_touch_lab.jpg",
                            ),
                            fit: BoxFit.fill,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  height: screenHeight * 0.04,
                                  width: screenHeight * 0.1,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.yellowAccent,
                                  ),
                                  child: Center(
                                    child: const Text(
                                      "invited",
                                      style: TextStyle(
                                        letterSpacing: 1.5,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "HIMALAYAN",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "2025 HYDERABAD TO MANALI",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                  height: screenHeight * 0.05,
                                  width: screenHeight * 0.2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.yellowAccent,
                                  ),
                                  child: Center(
                                    child: const Text(
                                      "2000 - 8000 INR",
                                      style: TextStyle(
                                        letterSpacing: 1.5,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Sticky TabBar
              SliverPersistentHeader(
                pinned: true,
                delegate: _SliverTabBarDelegate(
                  TabBar(
                    controller: _tabController,
                    isScrollable: true,
                    tabs:
                        _names
                            .map(
                              (name) => Tab(
                                child: Text(
                                  name,
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                    indicatorColor: Colors.redAccent,
                    labelColor: Colors.redAccent,
                    unselectedLabelColor: Colors.grey,
                  ),
                ),
              ),
            ],

        // Tab Views
        body: TabBarView(controller: _tabController, children: _pages),
      ),
    );
  }
}

class _SliverTabBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar _tabBar;

  _SliverTabBarDelegate(this._tabBar);

  @override
  double get minExtent => _tabBar.preferredSize.height;

  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(color: Colors.white, child: _tabBar);
  }

  @override
  bool shouldRebuild(_SliverTabBarDelegate oldDelegate) {
    return false;
  }
}
