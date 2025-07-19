import 'package:flutter/material.dart';
import 'package:demo_app_2/widgets/mydrawer.widget.dart';

class ContactsPage extends StatelessWidget {
  final List<Map<String, String>> contacts = [
    {
      'name': 'Najwa Moukhliss',
      'email': 'najwa.moukhliss@enset.com',
      'phone': '+212 612345678'
    },
    {
      'name': 'Amina matil',
      'email': 'M.amina@enset.com',
      'phone': '+212 623456789'
    },
    {
      'name': 'Hajar ouma',
      'email': 'O.hajar@enset.com',
      'phone': '+34 634510290'
    },
    {
      'name': 'Souad zriouil',
      'email': 'souad.zriouil@enset.com',
      'phone': '+212 634712890'
    },
    {
      'name': 'Brahim Diaz',
      'email': 'b.Brahim@enset.com',
      'phone': '+212 634567890'
    },
    {
      'name': 'Achraf hakou',
      'email': 'a.hakimi@enset.com',
      'phone': '+212 630123890'
    },
    {
      'name': 'Yassine benkhaled',
      'email': 'y.bounou@enset.com',
      'phone': '+212 630123890'
    },
    {
      'name': 'anass galal',
      'email': 'd.galal@enset.com',
      'phone': '+212 630123980'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(title: const Text("Contacts")),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          final contact = contacts[index];
          final initials = contact['name']!.split(' ').map((e) => e[0]).join();

          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.deepOrange,
                child: Text(
                  initials,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              title: Text(contact['name']!),
              subtitle: Text("${contact['email']}\n${contact['phone']}"),
              isThreeLine: true,
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
              },
            ),
          );
        },
      ),
    );
  }
}
