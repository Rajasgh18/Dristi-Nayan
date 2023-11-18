import 'package:flutter/material.dart';
import 'package:flutter_tailwindcss_defaults/colors.dart';

class HomeDestination extends StatefulWidget {
  const HomeDestination({super.key});

  @override
  State<HomeDestination> createState() => _HomeDestinationState();
}

class _HomeDestinationState extends State<HomeDestination>
    with TickerProviderStateMixin {
  late final TabController _tabcontroller;

  @override
  void initState() {
    super.initState();
    _tabcontroller = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          TabBar(
            controller: _tabcontroller,
            indicatorColor: TailwindColors.blue,
            labelPadding: const EdgeInsets.all(0),
            indicatorPadding: const EdgeInsets.symmetric(horizontal: 25),
            tabs: <Widget>[
              Tab(
                height: 125,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset("assets/images/crowd.png"),
                    const Text(
                      "Crowd \nManagement",
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
              Tab(
                height: 125,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset("assets/images/crime.png"),
                    const Text(
                      "Crime \nDetection",
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
              Tab(
                height: 125,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset("assets/images/work.png"),
                    const Text(
                      "Work \nMonitoring",
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
              Tab(
                height: 125,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset("assets/images/cctv.png"),
                    const Text(
                      "CCTV \nFeeds",
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabcontroller,
              children: const <Widget>[
                Center(
                  child: Text("Crowd Management"),
                ),
                Center(
                  child: Text("Crime Detection"),
                ),
                Center(
                  child: Text("Work Monitoring"),
                ),
                Center(
                  child: Text("CCTC Feeds"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
