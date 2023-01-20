import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:idrip/constant/constant.dart';
class Wishlist extends ConsumerStatefulWidget {
  const Wishlist({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _WishlistState();
}

class _WishlistState extends ConsumerState<Wishlist>{
  final List<Map<String, dynamic>> _allUsers = [
    {
      "image":
          "https://fastly.4sqi.net/img/user/130x130/559216087_bfMjDfoU_PA9LYBaGRPzn4MGxry6eBDIaLGCZypLvegOE7MzHhQ5Ja8nWvDgSobqQamERUrd4.jpg",
      "id": 1,
      "name": "Dr. Keyvan Arasteh",
      "des": "Cybersecurity & FullStackDeveloper @ ",
    },
    {
      "id": 2,
      "name": "Dr. Keyvan Arasteh",
      "des": "De & CEO @ ",
      "image":
          "https://fastly.4sqi.net/img/user/130x130/559216087_bfMjDfoU_PA9LYBaGRPzn4MGxry6eBDIaLGCZypLvegOE7MzHhQ5Ja8nWvDgSobqQamERUrd4.jpg",
    },
    {
      "id": 3,
      "name": "Prof. Keyvan Arasteh",
      "des": "Co-founder & CEO @ ",
      "image":
          "https://fastly.4sqi.net/img/user/130x130/559216087_bfMjDfoU_PA9LYBaGRPzn4MGxry6eBDIaLGCZypLvegOE7MzHhQ5Ja8nWvDgSobqQamERUrd4.jpg",
    },
    {
      "id": 4,
      "name": "Mitesh Raj",
      "des": "Co-founder & CEO @ ",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_LmG47_W3RM0QBVGI23-vodL_oOOJxLIBrg&usqp=CAU",
    },
    {
      "id": 5,
      "name": "Dr. Keyvan Arasteh",
      "des": "Co-founder & CEO @ ",
      "image":
          "https://fastly.4sqi.net/img/user/130x130/559216087_bfMjDfoU_PA9LYBaGRPzn4MGxry6eBDIaLGCZypLvegOE7MzHhQ5Ja8nWvDgSobqQamERUrd4.jpg",
    },
    {
      "id": 6,
      "name": "Deno James",
      "des": "Co-founder & CEO @ ",
      "image":
          "https://media.gettyimages.com/photos/portrait-of-smiling-mid-adult-man-wearing-tshirt-picture-id985138674?s=612x612",
    },
    {
      "id": 7,
      "name": "Kaviraj Patil",
      "des": "Co-founder & CEO @ ",
      "image":
          "https://image.shutterstock.com/image-photo/handsome-young-man-running-across-260nw-587931092.jpg",
    },
    {
      "id": 8,
      "name": "Elon musk ",
      "des": "Spacex Co-founder & Spacex CEO @ ",
      "image":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/3/34/Elon_Musk_Royal_Society_%28crop2%29.jpg/1200px-Elon_Musk_Royal_Society_%28crop2%29.jpg",
    },
    {
      "id": 9,
      "name": "Sundar Pichai",
      "des": " Google CEO @ ",
      "image":
          "https://assets.entrepreneur.com/content/3x2/2000/1657733878-GettyImages-1085999378.jpg?crop=1:1",
    },
    {
      "id": 10,
      "name": "Tim Cook",
      "des": "Apple CEO @ ",
      "image":
          "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQ45JyYVq4BYhtQBGMVX_Iae-BbuLrpA9If0oG8KAzrKl_zouRT",
    },
  ];
  
  List<Map<String, dynamic>> _foundUsers = [];
  @override
  initState() {

    _foundUsers = _allUsers;
    super.initState();
  }

  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = _allUsers;
    } else {
      results = _allUsers
          .where((user) =>
              user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

    // Refresh the UI
    setState(() {
      _foundUsers = results;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(appBar: AppBar(centerTitle: true,
    title: const Text("User List"),
    backgroundColor: Constant.orange,
    ),
    
    body: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(children: [
        TextField(
          onChanged: (value) => _runFilter(value),
          
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
                  hintText: "Search",
                  suffixIcon: const Icon(Icons.search),
                 
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(),
                  ),
                ),
              ),
             const  SizedBox(height: 20,
              ), Expanded(
              child: _foundUsers.isNotEmpty
                  ? ListView.builder(
                      itemCount: _foundUsers.length,
                      itemBuilder: (context, index) => Card(
                        elevation: 1,
                        margin: const EdgeInsets.symmetric(vertical: 2),
                        child: ListTile(
                          leading: CircleAvatar(
                            radius: 30.0,
                            backgroundImage:
                                NetworkImage(_foundUsers[index]['image']),
                            backgroundColor: Colors.transparent,
                          ),
                          title: Text(_foundUsers[index]['name']),
                          subtitle: Text('${_foundUsers[index]["des"]}'),
                        ),
                      ),
                    )
                  : const Text(
                      'No results found Please try with diffrent search',
                      style: TextStyle(fontSize: 24),
                    ),
            ),

      ]),
    ),
    );
  }
}