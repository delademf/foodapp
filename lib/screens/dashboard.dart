import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:third_proj/screens/chats.dart';
import 'package:third_proj/screens/orders.dart';
import 'package:third_proj/screens/profile.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  get labelBehavior => null;
  int currentPageIndex = 0;
  final List<Widget> pages =[
        Orders(),
        Chats(),
        Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF31B2ED),
                  
                ),
                child: IconButton(
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                ),
              ),
            );
          },
        ),
        automaticallyImplyLeading: true,
        title: Column(
          children: [
           
          ],
        ),
        
        backgroundColor: Colors.white,
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFF31B2ED),
              ),
              child: IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/Order');
                },
              ),
            ),
          )
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.all(0),
          children: [
            DrawerHeader(
              padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
              decoration: BoxDecoration(color: Color(0xFF31B2ED)),
              child: Text(
                'X',
                style: TextStyle(color: Colors.white, fontSize: 60),
              ),
            ),
            ListTile(
                leading: Icon(
                  Icons.person_2_sharp,
                  color: Color(0xFF31B2ED),
                ),
                title: Text('Profile'),
                shape:
                    Border(bottom: BorderSide(color: Colors.grey, width: 0.2))),
            ListTile(
              leading: Icon(
                Icons.delivery_dining_outlined,
                color: Color(0xFF31B2ED),
              ),
              title: Text('Online order'),
              shape: Border(bottom: BorderSide(color: Colors.grey, width: 0.2)),
            ),
            ListTile(
                leading:
                    Icon(Icons.menu_open_outlined, color: Color(0xFF31B2ED)),
                title: Text('Menu'),
                shape:
                    Border(bottom: BorderSide(color: Colors.grey, width: 0.2))),
            ListTile(
                leading: Icon(Icons.track_changes_outlined,
                    color: Color(0xFF31B2ED)),
                    onTap: () {
                      Navigator.pushNamed(context, '/tracker');
                    },
                title: Text('Tracker'),
                shape:
                    Border(bottom: BorderSide(color: Colors.grey, width: 0.2))),
            ListTile(
                leading: Icon(Icons.update,
                    color: Color(0xFF31B2ED)),
                    onTap: () {
                      Navigator.pushNamed(context, '/update');
                    },
                title: Text('update user'),
                shape:
                    Border(bottom: BorderSide(color: Colors.grey, width: 0.2))),
            ListTile(
                leading: Icon(Icons.delete_forever,
                    color: Color(0xFF31B2ED)),
                    onTap: () {
                    },
                title: Text('Delete'),
                shape:
                    Border(bottom: BorderSide(color: Colors.grey, width: 0.2))),
            ListTile(
                leading:
                    Icon(Icons.contacts_outlined, color: Color(0xFF31B2ED)),
                title: Text('Contacts'),
                shape:
                    Border(bottom: BorderSide(color: Colors.grey, width: 0.2))),
            ListTile(
                leading: Icon(Icons.info_outline, color: Color(0xFF31B2ED)),
                title: Text('About us '),
                shape:
                    Border(bottom: BorderSide(color: Colors.grey, width: 0.2))),
          ],
        ),
      ),
      body: Padding(padding: EdgeInsets.all(5),
      child: SingleChildScrollView(
        child: Column(
          children: [
            
            TextField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xFF31B2ED),
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                            border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFF31B2ED), width: 2),
                                borderRadius: BorderRadius.all(Radius.circular(10))),
                            hintText: "Search for a vendor or product",hintStyle: TextStyle(color: Colors.white))),
            
            SizedBox(height: 10,),

            CarouselSlider(
              options: CarouselOptions(height: 200.0,
              autoPlayInterval: Duration(seconds: 3),
              autoPlay: true,),
              items:[
                   Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      
                      child: Image.asset("assets/images/foodAd2.jpg",fit: BoxFit.fill,),

                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      
                      child: Image.asset("assets/images/foodAd3.jpg",fit: BoxFit.fill,),

                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      
                      child: Image.asset("assets/images/foodAd4.jpg",fit: BoxFit.fill,),

                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      
                      child: Image.asset("assets/images/foodAd5.jpg",fit: BoxFit.fill,),

                    ),
              ]
              
            ),
SizedBox(height: 20,),

            // Container(
            //   child: ListView(
            //     scrollDirection: Axis.horizontal,
            //     children: [
            //       Container(
            //         width: 161,
            //         height: 41,
            //         color: Color(0xFF31B2ED),
            //         child: Row(
            //           children: [
            //             Icon(Icons.fastfood,color: Colors.white,),
            //             Text("Burgers",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
            //           ],
            //         )
            //       ),
            //       Container(
            //          width: 161,
            //         height: 41,
            //         color: Color(0xFF31B2ED),
            //         child: Row(
            //           children: [
            //             Icon(Icons.fastfood,color: Colors.white,),
            //             Text("Burgers",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
            //           ],
            //         )
            //       ),
            //       Container(
            //          width: 161,
            //         height: 41,
            //         color: Color(0xFF31B2ED),
            //         child: Row(
            //           children: [
            //             Icon(Icons.fastfood,color: Colors.white,),
            //             Text("Burgers",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
            //           ],
            //         )
            //       ),
            //       Container(
            //          width: 161,
            //         height: 41,
            //         color: Color(0xFF31B2ED),
            //         child: Row(
            //           children: [
            //             Icon(Icons.fastfood,color: Colors.white,),
            //             Text("Burgers",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
            //           ],
            //         )
            //       ),
            //     ],
            //   ),
            // )

            Container(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
          height: 41,
          child: ListView(
            // This next line does the trick.
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                width: 161,
                height: 41,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color(0xFF31B2ED),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/burger.png'),
                      SizedBox(height: 10,),
                      Text('Burger',style: TextStyle(fontWeight: FontWeight.normal,fontFamily: 'Nunito',fontSize: 18,color: Colors.white),),
                  
                    ],
                  ),
                ),
              ),
              SizedBox(width: 20,),
              Container(
                width: 161,
                height: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color(0xFF31B2ED),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row( 
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/burger.png',),
                      SizedBox(height: 10,),
                      Text('Burger',style: TextStyle(fontWeight: FontWeight.normal,fontFamily: 'Nunito',fontSize: 18,color: Colors.white),),
                  
                    ],
                  ),
                ),
              ),
              SizedBox(width: 20,),
              Container(
                width: 161,
                height: 41,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color(0xFF31B2ED),
                ),                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/burger.png'),
                      SizedBox(height: 10,),
                      Text('Burger',style: TextStyle(fontWeight: FontWeight.normal,fontFamily: 'Nunito',fontSize: 18,color: Colors.white),),
                  
                    ],
                  ),
                ),
              ),
              SizedBox(width: 20,),
              Container(
                width: 161,
                height: 41,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color(0xFF31B2ED),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/burger.png'),
                      SizedBox(height: 10,),
                      Text('Burger',style: TextStyle(fontWeight: FontWeight.normal,fontFamily: 'Nunito',fontSize: 18,color: Colors.white),),
                  
                    ],
                  ),
                ),
              ),
              
              ]
              )
              ),
          ),
 Container(
  height: 400,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.center,
                        children: [Image.asset('assets/images/foodAd4.jpg'),
                      Container(
                        decoration: BoxDecoration(color: Colors.black.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(8)),
                        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                        child: Text('BURGER',style: TextStyle(fontSize: 14,color:Colors.white,fontWeight: FontWeight.w800)))
                      ]),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset("assets/images/like-shapes.png"),
                          Text(
                            '97%',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                  
                      Stack(
                        alignment: AlignmentDirectional.center,
                        children: [Image.asset('assets/images/foodAd4.jpg'),
                      Container(
                        decoration: BoxDecoration(color: Colors.black.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(8)),
                        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 25),
                        child: Text('McDonalds',style: TextStyle(fontSize: 14,color:Colors.white,fontWeight: FontWeight.w800)))
                      ]),
                  
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset("assets/images/like-shapes.png"),
                          Text(
                            '98%',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                      
                      Stack(
                        alignment: AlignmentDirectional.center,
                        children: [Image.asset('assets/images/foodAd4.jpg'),
                      Container(
                        decoration: BoxDecoration(color: Colors.black.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(8)),
                        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                        child: Text('BBQ',style: TextStyle(fontSize: 14,color:Colors.white,fontWeight: FontWeight.w800)))
                      ]),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset("assets/images/like-shapes.png"),
                          Text(
                            '92%',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                      
                      Stack(
                        alignment: AlignmentDirectional.center,
                        children: [Image.asset('assets/images/foodAd4.jpg'),
                      Container(
                        decoration: BoxDecoration(color: Colors.black.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(8)),
                        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                        child: Text('VEGAN',style: TextStyle(fontSize: 14,color:Colors.white,fontWeight: FontWeight.w800)))
                      ]),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset("assets/images/like-shapes.png"),
                          Text(
                            '75%',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                  
                      Stack(
                        alignment: AlignmentDirectional.center,
                        children: [Image.asset('assets/images/r5.jpg'),
                      Container(
                        decoration: BoxDecoration(color: Colors.black.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(8)),
                        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                        child: Text('AMALA',style: TextStyle(fontSize: 14,color:Colors.white,fontWeight: FontWeight.w800)))
                      ]),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset("assets/images/like-shapes.png"),
                          Text(
                            '94%',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                  
                  
                      Stack(
                        alignment: AlignmentDirectional.center,
                        children: [Image.asset('assets/images/restaurant6.jpg'),
                      Container(
                        decoration: BoxDecoration(color: Colors.black.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(8)),
                        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                        child: Text('RICE',style: TextStyle(fontSize: 14,color:Colors.white,fontWeight: FontWeight.w800)))
                      ]),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset("assets/images/like-shapes.png"),
                          Text(
                            '98%',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )
            

            
          ],

        ),
      ),),
    );
  }
}


// Future<bool> retrieveAllRestaurants(BuildContext context) async {
//     //create uri
//     var uri = Uri.parse("https://c8aa-196-61-37-18.ngrok-free.app/restaurant/find-all-restaurants");
//     //header
//    Map<String, String> header = {"Content-Type": "application/json"};

//     var response = await http.post(uri, headers: header);

//     List jsonResponse = json.decode(response.body);

//     var restaurantList = jsonResponse
//         .map((restaurant) => Restaurant.fromJson(restaurant))
//         .toList();

//     // Update state to trigger a rebuild
//     setState(() {
//       restaurants = restaurantList;
//     });


//     for (var restaurant in restaurants) {
//       print(restaurant.name);
//     }
//     //print the response body
//     print("${response.body}");
//     print("hello......................................................................................");


//     // if (response.statusCode == 200) {
//     //   Navigator.pushNamed(context, '/dashboard');

//     //   // Navigator.push(context, MaterialPageRoute(builder: (context) => Dashboard()));
//     // } else {
//     //   print('Request failed with status: ${response.statusCode}.');
//     // }

//     // if (response.body.contains('token')) {
//     //   print("registered");
//     //   displayToastMessage("You are logged in", context);
//     //   userEmail = '$email';
//     //   print("Your email is " + userEmail);
//     //   Navigator.pushNamedAndRemoveUntil(
//     //       context as BuildContext, MainScreen.idScreen, (route) => false);
//     //   return true;
//     // } else {
//     //   print("null not registered");
//     //   displayToastMessage("Account does not exist", context);
//     //   Navigator.pop(context);
//     //   return false;
//     // }

//     return true;
//   }



// logger.d('Log message with 2 methods');