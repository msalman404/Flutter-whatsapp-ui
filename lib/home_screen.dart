import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Whatsapp'),
            actions: [
              const Icon(Icons.camera_alt),
              const SizedBox(
                width: 20,
              ),
              const Icon(Icons.search),
              PopupMenuButton(
                  icon: const Icon(Icons.more_vert),
                  itemBuilder: (context) => const [
                        PopupMenuItem(value: 1, child: Text('New Group')),
                        PopupMenuItem(value: 2, child: Text('Linked devices')),
                        PopupMenuItem(value: 3, child: Text('Settings'))
                      ]),
              const SizedBox(
                width: 20,
              ),
            ],
            bottom: const TabBar(tabs: [
              Tab(
                child: Icon(Icons.group),
              ),
              Tab(
                child: Text('Chats'),
              ),
              Tab(
                child: Text('Status'),
              ),
              Tab(
                child: Text('Calls'),
              ),
            ]),
          ),
          body: TabBarView(children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(
                      Icons.group_add,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Text(
                        'New Community',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            ),
            ListView.builder(
                itemCount: 15,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                        (index % 2 == 0
                            ? 'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=600'
                            : 'https://images.pexels.com/photos/4556737/pexels-photo-4556737.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      ),
                    ),
                    title: Text(index % 2 == 0 ? 'Hassan Ali' : 'Junaid Air'),
                    subtitle: Text(
                        index % 2 == 0 ? 'How are you?' : 'Asslam o Alaikum '),
                    trailing: const Text('5:30 pm'),
                  );
                }),
            ListView.builder(
                itemCount: 15,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.green, width: 2)),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(index % 2 == 0
                            ? 'https://res.cloudinary.com/demo/image/facebook/65646572251.jpg'
                            : 'https://images.pexels.com/photos/2726111/pexels-photo-2726111.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      ),
                    ),
                    title:
                        Text(index % 2 == 0 ? 'Zain Ahmad' : 'Hafiz Abdullah'),
                    subtitle: Text(
                        index % 2 == 0 ? '9 minutes ago' : 'Today at 3:30 PM'),
                  );
                }),
            ListView.builder(
                itemCount: 15,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(index % 2 == 0
                          ? 'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=600'
                          : 'https://res.cloudinary.com/demo/image/facebook/65646572251.jpg'),
                    ),
                    title: const Text('Hassan'),
                    subtitle: Row(
                      children: [
                        Icon(
                          index % 2 == 0
                              ? Icons.call_received
                              : Icons.call_missed,
                        ),
                        Text(index % 2 == 0
                            ? 'Today 2:23 PM?'
                            : 'Yesterday 3:15 PM'),
                      ],
                    ),
                    trailing:
                        Icon(index % 2 == 0 ? Icons.call : Icons.video_call),
                  );
                })
          ]),
        ));
  }
}
