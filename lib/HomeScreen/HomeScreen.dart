import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          title: Text('Student'),
          bottom: TabBar(
            isScrollable: true,
            indicatorPadding: EdgeInsets.only(top: 0, right: -9, bottom: 10),
            indicator: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.white, width: 2.5),
              ),
            ),
            indicatorSize: TabBarIndicatorSize.label,
            tabs: [
              Tab(text: 'Home'),
              Tab(text: 'Tests'),
              Tab(text: 'Chat'),
              Tab(text: 'Student'),
              //Tab(text: 'Chat'),
              Tab(text: 'Notice Board'),
              Tab(text: 'Assignment'),
              Tab(text: 'Study Material'),
            ],
          ),
        ),
        body: TabBarView(children: [


          // Center(
          //   child: Text('Home'),
          // ),
          // 
        Center(
          child: Column(children: [

Container(
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  color: Colors.orangeAccent[100],
                  child: Column(
                    children: [
                      Image.network(
                        'https://cdn0.iconfinder.com/data/icons/online-education-butterscotch-vol-2/512/Learning_Material-512.png',
                        width: 70,
                        height: 70,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'Study Material Posted By the Teacher can be Found Here',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    height: 50,
                    color: Colors.white,
                    child: Material(
                      child: TabBar(
                        indicatorColor: Colors.teal,
                        labelColor: Colors.teal,
                        unselectedLabelColor: Colors.black54,
                        controller: _tabController,
                        tabs: [
                          Container(
                            child: Tab(
                              text: 'Series',
                            ),
                          ),
                          Container(
                            child: Tab(
                              text: 'Sessional Paper',
                            ),
                          ),
                          Container(
                            child: Tab(
                             text: 'Semester Paper',
                            ),
                          ),
                        ],
                      ),
                    ),),
                      Container(
                     
                      height:500,
                      child: TabBarView(controller: _tabController,
                    children: [
                      Center(child: Text('Quantom')),
                      Center(child: Text('Sessional Paper')),
                      Container(
                        child: Center(child: Text('Semester Paper')),
   
                        ),
                      
                    ],),)
          ],),
        ),
          Center(
            child: Column(children: [

              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  color: Colors.orangeAccent[100],
                  child: Column(
                    children: [
                      Image.network(
                        'https://cdn1.iconfinder.com/data/icons/survey/500/Questionnaire_Archery-512.png',
                        width: 70,
                        height: 70,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'Tests scheduled by the teacher appear here',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
            ],),
          ),
          Center(
            child: Text('Chat'),
          ),
          Center(
            child: Text('Student'),
          ),
          Center(
            child: Text('Notics'),
          ),
          Center(
            child: Text('Assignment'),
          ),
          //Center(child: Text('Study Material'),),

          Center(
              child: Container(
            //color: Colors.indigo,
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  color: Colors.orangeAccent[100],
                  child: Column(
                    children: [
                      Image.network(
                        'https://cdn0.iconfinder.com/data/icons/online-education-butterscotch-vol-2/512/Learning_Material-512.png',
                        width: 70,
                        height: 70,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'Study Material Posted By the Teacher can be Found Here',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    height: 50,
                    color: Colors.white,
                    child: Material(
                      child: TabBar(
                        indicatorColor: Colors.teal,
                        labelColor: Colors.teal,
                        unselectedLabelColor: Colors.black54,
                        controller: _tabController,
                        tabs: [
                          Container(
                            child: Tab(
                              text: 'Youtube Video',
                            ),
                          ),
                          Container(
                            child: Tab(
                              text: 'Image',
                            ),
                          ),
                          Container(
                            child: Tab(
                             text: 'PDF Materials',
                            ),
                          ),
                        ],
                      ),
                    ),),
                    Container(
                     
                      height:500,
                      child: TabBarView(controller: _tabController,
                    children: [
                      Center(child: Text('Youtube')),
                      Center(child: Text('Image')),
                      Container(
                        
   
                      child: ListView.builder(
                        itemCount: 10,
                        itemBuilder: (BuildContext context, int index){
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)),
                              height: 100,
                             child: Text("$index"),
                              
                            ),
                          );
                        }),
                        
                        ),
                      
                    ],),)
                  
              ],
            ),
          )),
        ]),
        drawer: Drawer(
  // Add a ListView to the drawer. This ensures the user can scroll
  // through the options in the drawer if there isn't enough vertical
  // space to fit everything.
  child: ListView(
    // Important: Remove any padding from the ListView.
    padding: EdgeInsets.zero,
    children: <Widget>[

      SizedBox(height: 50,),
    
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text('RAMENDRA PATEL'),
    ),

      ListTile(  
              leading: Icon(Icons.home), title: Text("Home"),  
              onTap: () {  
                Navigator.pop(context);  
              },  
            ),  
            ListTile(  
              leading: Icon(Icons.settings), title: Text("Settings"),  
              onTap: () {  
                Navigator.pop(context);  
              },  
            ),  
            ListTile(  
              leading: Icon(Icons.contacts), title: Text("Contact Us"),  
              onTap: () {  
                Navigator.pop(context);  
              },
            ),

              ListTile(  
              leading: Icon(Icons.share_outlined), title: Text("Share App"),  
              onTap: () {  
                Navigator.pop(context);  
              },
            ),
    ],
  ),
),
      ),
    );
  }
}
