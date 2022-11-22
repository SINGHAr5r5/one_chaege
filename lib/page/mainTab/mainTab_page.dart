import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../homePage/homePage.dart';
import 'mainTab.dart';

const _kPages = <String, IconData>{
  'หน้าหลัก': Icons.home,
  'ประวัติ': Icons.map,
  'add': Icons.add,
  // 'เงินเดือน': Icons.money_off_sharp,
  // 'ตั้งค่า': Icons.people,
};

class MainTabPage extends StatefulWidget {
  const MainTabPage({Key? key}) : super(key: key);

  @override
  _MainTabPageState createState() => _MainTabPageState();
}

class _MainTabPageState extends State<MainTabPage> {
  int _currentTabIndex = 0;
  late MainTabCubit _cubit;

  @override
  void initState() {
    super.initState();
    _cubit = MainTabCubit();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => _cubit,
        child: BlocListener<MainTabCubit, MainTabState>(
          listener: (context, state) {},
          child: BlocBuilder<MainTabCubit, MainTabState>(
            builder: (context, state) {
              return _buildPage(context, state);
            },
          ),
        ),
      ),
    );
  }

  Widget _buildPage(BuildContext context, MainTabState state) {
    final _kTabPages = <Widget>[
       HomePagePage(),
       HomePagePage(),
       HomePagePage(),
      // HistoryPage(),
      // EventPage(),
      // SalaryPage(),
      // SettingPage()
    ];
    final _kBottmonNavBarItems = <BottomNavigationBarItem>[
      const BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined), label: 'หน้าหลัก'),
      // const BottomNavigationBarItem(icon: Icon(Icons.add), label: 'ประวัติ'),
   
      
       //singhaBottomNavigationBarItem(),

      const BottomNavigationBarItem(
          icon: Icon(Icons.money_outlined), label: 'เงินเดือน'),
      const BottomNavigationBarItem(
          icon: Icon(Icons.settings_cell_sharp), label: 'ตั้งค่า'),
    ];
    assert(_kTabPages.length == _kBottmonNavBarItems.length);
    final bottomNavBar = BottomNavigationBar(
      items: _kBottmonNavBarItems,
      currentIndex: _currentTabIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        setState(() {
          _currentTabIndex = index;
        });
      },
    );
    return Scaffold(
      body: _kTabPages[_currentTabIndex],
      bottomNavigationBar: bottomNavBar,
    );
  }

  // void showDialogs() {
  //   showDialog<String>(
  //     context: context,
  //     builder: (BuildContext context) => AlertDialog(
  //         title:  Center(child: const Text('ใบลา')), content: Container(
  //       width: MediaQuery.of(context).size.width,
  //       height: MediaQuery.of(context).size.height,
  //        padding: EdgeInsets.all(20),
  //           child: EventPage())),
  //   ).then((returnVal) {});
  // }
  // Widget _buildAddEvent(){
  //   return Navigator.push(
  //   context,
  //   MaterialPageRoute(builder: (context) => const SecondRoute()),
  // );
  // }
  BottomNavigationBarItem singhaBottomNavigationBarItem() {
    return BottomNavigationBarItem(
        icon: Container(
          child: CircleAvatar(
            
            radius: 35,
            backgroundColor: Color(0xff00254A),
            child: IconButton(
              icon: Icon(Icons.dashboard_customize_outlined,
                  size: 30.0, color: Color.fromARGB(255, 255, 255, 255)),
              onPressed: () {
              //   Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const EventPage()),
              // );
      //  Navigator.push(context, PageTransition(type: PageTransitionType.bottomToTop, child: EventPage()));
        // Navigator.push(context, PageTransition(type: PageTransitionType.bottomToTop, child: NewUserPage()));
        
        
        
                // showDialogs();
              },
            ),
          ),
        ),
        label: '');
  }
  
}
