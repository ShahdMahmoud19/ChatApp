import 'package:chat_app/model.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 28,
              child: CircleAvatar(
                radius: 23,
                backgroundImage: NetworkImage(
                  'https://tse3.mm.bing.net/th/id/OIP.u__lnS7VeRD27KDXfxKzBgHaHa?rs=1&pid=ImgDetMain&o=7&rm=3',
                ),
              ),
            ),
            SizedBox(width: 12),
            Text(
              'Chats',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 25),
            child: Row(
              spacing: 3,
              children: [
                Icon(Icons.photo_camera),
                SizedBox(width: 12),
                Icon(Icons.edit),
              ],
            ),
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.only(top: 25, bottom: 15, left: 10, right: 10),
              padding: EdgeInsets.all(10),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFFD3D3D3),
              ),
              child: Row(
                children: [
                  Icon(Icons.search),
                  SizedBox(width: 8),
                  Text(
                    'Search',
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 100,
              width: double.infinity,
              child: ListView.builder(
                itemCount: users.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: CircleAvatar(
                    radius: 45,
                    backgroundColor: Colors.blue,
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(users[index].image),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => Padding(
                padding: const EdgeInsets.all(5.0),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(users[index].image),
                  ),
                  title: Text(users[index].title),
                  subtitle: Text(users[index].subtitle),
                  trailing: Icon(Icons.check_circle_outline),
                ),
              ),
              childCount: users.length,
            ),
          ),
        ],
      ),

      bottomSheet: BottomAppBar(
        height: 55,
        child: Row(
          children: [
            Expanded(child: Icon(Icons.message, color: Colors.green)),
            Expanded(child: Icon(Icons.person)),
            Expanded(child: Icon(Icons.settings)),
          ],
        ),
      ),
    );
  }
}
