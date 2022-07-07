import 'package:flutter/material.dart';
import 'package:nav_to_specific_tab_from_a_diff_screen/dashboardFeature/dashboard_home_page.dart';
import 'package:nav_to_specific_tab_from_a_diff_screen/dashboardFeature/dashboard_market.dart';
import 'package:nav_to_specific_tab_from_a_diff_screen/dashboardFeature/dashboard_portfolio_page.dart';
import 'package:nav_to_specific_tab_from_a_diff_screen/dashboardFeature/dashboard_settings.dart';

class Dashboard extends StatefulWidget {
  int? currentProfileTab;
  int? currentTab;
  Dashboard({this.currentProfileTab, this.currentTab});
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  // to keep track of active tab index
  final List<Widget> screens = [
    homepage(),
    Market(),
    Portfolio(),
    Settings(),
  ]; // to store nested tabs
  final PageStorageBucket bucket = PageStorageBucket();
  final PageStorageBucket bucket2 = PageStorageBucket();

  Widget currentScreen = homepage(); // Our first view in viewport
  Widget currentScreen2 = Portfolio();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.currentProfileTab == 2
          ? PageStorage(
              child: currentScreen2,
              bucket: bucket2,
            )
          : PageStorage(
              child: currentScreen,
              bucket: bucket,
            ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0XFF7B61FF),
        child: Icon(color: Color.fromARGB(255, 255, 255, 255), Icons.add),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Opacity(
        opacity: 0.7,
        child: BottomAppBar(
          color: const Color(0xFF262932),
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          child: Container(
            height: 90,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen2 = homepage();
                          currentScreen =
                              homepage(); // if user taps on this dashboard tab will be active
                          widget.currentProfileTab = 0;
                          widget.currentTab = 0;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.home,
                            color: widget.currentProfileTab == 0
                                ? Color(0xFF7B61FF)
                                : widget.currentTab == 0
                                    ? Color(0xFF7B61FF)
                                    : Color(0xFFFFFFFF),
                          ),
                          Text(
                            'Home',
                            style: TextStyle(
                              color: widget.currentProfileTab == 0
                                  ? Color(0xFF7B61FF)
                                  : widget.currentTab == 0
                                      ? Color(0xFF7B61FF)
                                      : Color(0xFFFFFFFF),
                            ),
                          ),
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen2 = Market();
                          currentScreen =
                              Market(); // if user taps on this dashboard tab will be active
                          widget.currentProfileTab = 1;
                          widget.currentTab = 1;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.bar_chart,
                            color: widget.currentProfileTab == 1
                                ? Color(0xFF7B61FF)
                                : widget.currentTab == 1
                                    ? Color(0xFF7B61FF)
                                    : Color(0xFFFFFFFF),
                          ),
                          Text(
                            'Market',
                            style: TextStyle(
                              color: widget.currentTab == 1
                                  ? Color(0xFF7B61FF)
                                  : widget.currentProfileTab == 1
                                      ? Color(0xFF7B61FF)
                                      : Color(0xFFFFFFFF),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),

                // Right Tab bar icons

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen2 = Portfolio();
                          currentScreen =
                              Portfolio(); // if user taps on this dashboard tab will be active
                          widget.currentProfileTab = 2;
                          widget.currentTab = 2;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.pie_chart,
                            color: widget.currentProfileTab == 2
                                ? Color(0xFF7B61FF)
                                : widget.currentTab == 2
                                    ? Color(0xFF7B61FF)
                                    : Color(0xFFFFFFFF),
                          ),
                          Text(
                            'Porfolio',
                            style: TextStyle(
                              color: widget.currentProfileTab == 2
                                  ? Color(0xFF7B61FF)
                                  : widget.currentTab == 2
                                      ? Color(0xFF7B61FF)
                                      : Color(0xFFFFFFFF),
                            ),
                          ),
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen2 = Settings();
                          currentScreen =
                              Settings(); // if user taps on this dashboard tab will be active
                          widget.currentProfileTab = 3;
                          widget.currentTab = 3;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.settings,
                            color: widget.currentTab == 3
                                ? Color(0xFF7B61FF)
                                : widget.currentProfileTab == 3
                                    ? Color(0xFF7B61FF)
                                    : Color(0xFFFFFFFF),
                          ),
                          Text(
                            'Settings',
                            style: TextStyle(
                              color: widget.currentTab == 3
                                  ? Color(0xFF7B61FF)
                                  : widget.currentProfileTab == 3
                                      ? Color(0xFF7B61FF)
                                      : Color(0xFFFFFFFF),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
