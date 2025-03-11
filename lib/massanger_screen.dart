// import 'package:flutter/material.dart';
//
// class MassangerScreen extends StatefulWidget {
//   const MassangerScreen({super.key});
//
//   @override
//   State<MassangerScreen> createState() => MassangerScreenState();
// }
//
// class MassangerScreenState extends State<MassangerScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.grey[200],
//         elevation: 0,
//         title: Row(
//           children: [
//             CircleAvatar(
//               radius: 20,
//               backgroundImage: NetworkImage(
//                 "https://via.placeholder.com/150",
//               ),
//             ),
//             SizedBox(width: 10),
//             Text(
//               "Chats",
//               style: TextStyle(
//                 color: Colors.black,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 25,
//               ),
//             ),
//           ],
//         ),
//         actions: [
//           CircleAvatar(
//             child: IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt),),
//           ),
//           SizedBox(width: 10),
//           CircleAvatar(
//             child: IconButton(onPressed: (){}, icon: Icon(Icons.edit),),
//           )
//         ],
//       ),
//       body: Center(
//         child: Text(
//           "Welcome to Messenger",
//           style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class MassangerScreen extends StatefulWidget {
  const MassangerScreen({super.key});

  @override
  State<MassangerScreen> createState() => MassangerScreenState();
}

class MassangerScreenState extends State<MassangerScreen> {
  var currentIndex = 0;

  List<Map<String, String>> users = [
    {"name": "Rawda Saleh", "message": "Hello! how are yue", "time": "02:00 pm"},
    {"name": "Ahmed Ali", "message": "where where where?", "time": "01:45 pm"},
    {"name": "Sara Mohamed", "message": "Hello! how are yue", "time": "12:30 pm"},
    {"name": "Mohamed Adel", "message": "where where where", "time": "11:15 am"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://via.placeholder.com/150',
            ),
          ),
        ),
        title: Text('Chats', style: TextStyle(color: Colors.white)),
        actions: [
          _buildActionIcon(Icons.camera_alt_outlined),
          _buildActionIcon(Icons.edit),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              SizedBox(
                height: 100,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => statusList(users[index]['name']!),
                  separatorBuilder: (context, index) => SizedBox(width: 10),
                  itemCount: users.length,
                ),
              ),
              SizedBox(height: 30),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => messageScreen(
                  users[index]['name']!,
                  users[index]['message']!,
                  users[index]['time']!,
                ),
                itemCount: users.length,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildActionIcon(IconData icon) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        child: IconButton(
          onPressed: () {},
          icon: Icon(icon, color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}

// Widget لعرض الـ Status
Widget statusList(String name) => Column(
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Stack(
      alignment: Alignment.bottomRight,
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage('https://via.placeholder.com/150'),
          radius: 30,
        ),
        Positioned(
          bottom: 2,
          right: 2,
          child: CircleAvatar(
            backgroundColor: Colors.green,
            radius: 6,
          ),
        ),
      ],
    ),
    SizedBox(height: 5),
    Text(
      name,
      textAlign: TextAlign.center,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    )
  ],
);

// Widget لعرض المحادثات
Widget messageScreen(String name, String message, String time) => Row(
  children: [
    Stack(
      alignment: Alignment.bottomRight,
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage('https://via.placeholder.com/150'),
          radius: 30,
        ),
        Positioned(
          bottom: 2,
          right: 2,
          child: CircleAvatar(
            backgroundColor: Colors.green,
            radius: 6,
          ),
        ),
      ],
    ),
    SizedBox(width: 15),
    Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: Text(
                  message,
                  style: TextStyle(fontSize: 15),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                height: 8,
                width: 8,
              ),
              SizedBox(width: 8),
              Text(time)
            ],
          )
        ],
      ),
    )
  ],
);





