import 'package:flutter/material.dart';
import 'package:learningapiflutter/services/user_service.dart';

import '../model/user_model.dart';
import '../widget/container_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final UserService userService = UserService();
  List<UserModel> users = [];

  bool isLoaded = false;

  @override
  void initState() {
    super.initState();
    getData();
  }

  Future<void> getData() async {
    final response = await userService.fetchUsers();
    setState(() {
      users = response;
      isLoaded = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'API Call',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: isLoaded
          ? ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                final user = users[index];
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.only(
                      left: 5, top: 10, right: 10, bottom: 10),
                  margin: const EdgeInsets.all(5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(180),
                        child: Image.network(user.image.imageUrl),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ContainerText(
                              user: user,
                              text: 'Name: ${user.fullName}',
                            ),
                            ContainerText(
                              user: user,
                              text: 'Gender: ${user.gender}',
                            ),
                            ContainerText(
                              user: user,
                              text: 'Date: ${user.dob.date}',
                            ),
                             ContainerText(
                              user: user,
                              text: 'Age: ${user.dob.age}',
                            ),
                            ContainerText(
                              user: user,
                              text: 'Street Name: ${user.location.street.name}',
                            ),
                            ContainerText(
                              user: user,
                              text:
                                  'Street Number: ${user.location.street.number}',
                            ),
                            ContainerText(
                              user: user,
                              text: 'City: ${user.location.city}',
                            ),
                            ContainerText(
                              user: user,
                              text: 'State: ${user.location.state}',
                            ),
                            ContainerText(
                              user: user,
                              text: 'Country: ${user.location.country}',
                            ),
                            ContainerText(
                              user: user,
                              text: 'Nationality: ${user.nat}',
                            ),
                            ContainerText(
                              user: user,
                              text: 'Email: ${user.email}',
                            ),
                            ContainerText(
                              user: user,
                              text: 'Phone Number: ${user.phone}',
                            ),
                            ContainerText(
                              user: user,
                              text: 'Phone Number: ${user.cell}',
                            ),
                            ContainerText(
                              user: user,
                              text:
                                  'Latitude: ${user.location.coordinates.latitude}',
                            ),
                            ContainerText(
                              user: user,
                              text:
                                  'Latitude: ${user.location.coordinates.longitude}',
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            )
          : const Center(
              child: CircularProgressIndicator(
                color: Colors.blue,
              ),
            ),
    );
  }
}


// ListTile(
//                     title: Row(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Image.network(user.image.imageUrl),
//                         const SizedBox(width: 10),
//                         ContainerText(
//                           user: user,
//                           text: 'Name: ${user.fullName}',
//                         ),
//                       ],
//                     ),
//                     subtitle: Padding(
//                       padding: const EdgeInsets.only(left: 60),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           ContainerText(
//                             user: user,
//                             text: 'Gender: ${user.gender}',
//                           ),
//                           ContainerText(
//                             user: user,
//                             text: 'Street Name: ${user.location.street.name}',
//                           ),
//                           ContainerText(
//                             user: user,
//                             text: 'Street Number: ${user.location.street.number}',
//                           ),
//                           ContainerText(
//                             user: user,
//                             text: 'City: ${user.location.city}',
//                           ),
//                           ContainerText(
//                             user: user,
//                             text: 'State: ${user.location.state}',
//                           ),
//                           ContainerText(
//                             user: user,
//                             text: 'Country: ${user.location.country}',
//                           ),
//                           ContainerText(
//                             user: user,
//                             text: 'Nationality: ${user.nat}',
//                           ),
//                           ContainerText(
//                             user: user,
//                             text: 'Email: ${user.email}',
//                           ),
//                           ContainerText(
//                             user: user,
//                             text: 'Phone Number: ${user.phone}',
//                           ),
//                           ContainerText(
//                             user: user,
//                             text: 'Phone Number: ${user.cell}',
//                           ),
//                           ContainerText(
//                             user: user,
//                             text:
//                                 'Latitude: ${user.location.coordinates.latitude}',
//                           ),
//                           ContainerText(
//                             user: user,
//                             text:
//                                 'Latitude: ${user.location.coordinates.longitude}',
//                           )
//                         ],
//                       ),
//                     ),
//                   ),