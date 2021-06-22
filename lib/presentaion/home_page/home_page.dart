import 'package:flutter/material.dart';
import 'package:domain_design_pattern_flutter/infrastructure/user_auth_facade.dart';
import 'package:domain_design_pattern_flutter/presentaion/register/register_page.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController _pageController;
  int _page = 0;

  // UserBloc _userBloc;
   final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _pageController = PageController();

    //_userBloc = UserBloc();
   }

  @override
  void dispose() {
    _pageController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      key: _scaffoldKey,
       bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            canvasColor: Color.fromRGBO(255, 228, 91, 1),
            primaryColor: Colors.black,
            textTheme: Theme.of(context)
                .textTheme
                .copyWith(caption: TextStyle(color: Colors.black))),
        child:
        BottomNavigationBar(
          currentIndex: _page,
          onTap: (page) {
            _pageController.animateToPage(page,
                duration: Duration(milliseconds: 500), curve: Curves.easeIn);
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),label: "" ),

            BottomNavigationBarItem(
                icon: Icon(Icons.bookmark),label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.map),label: ""),
          ],
        ),

      ),
      body: SafeArea(

          child: Stack(

            children: [

              PageView(
                controller: _pageController,
                onPageChanged: (page) {
                  setState(() {
                    _page = page;
                  });
                },
                ///TODO : Your pages goes here
                children: <Widget>[Container(), Container(), Container(),Container()],
              ),
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(icon:Icon(Icons.menu),color: Colors.black,onPressed: (){
                  _scaffoldKey.currentState!.openDrawer();

                },),
              ),
            ],
          ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            ListView(
              shrinkWrap: true,
              children: [
                DrawerHeader(
                    child: Column(
                      children: <Widget>[
                        Container(
                          //margin: EdgeInsets.only(left: 10, bottom: 15),
                            child: Padding(
                              padding: const EdgeInsets.all(24.0),
                              child: Image.asset("assets/images/logo.png"
                              ),
                            )),
                        Text(
                          "Domain Driven Design",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                      ],
                    ),),
                ListTile(
                  title: Text(
                    "Contact us",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  leading: Icon(Icons.headset_mic, size: 22, color: Colors.black),
                  /* onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ContactUsPage()),
                  ),*/
                ),
                Divider(height: 2, color: Colors.black45),
                ListTile(
                  title: Text(
                    "Logout",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  leading: Icon(
                    Icons.launch,
                    color: Colors.black,
                  ),
                  onTap: () async {
                    await UserAuthFacade().signOut();
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => RegisterPage()));
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

}
