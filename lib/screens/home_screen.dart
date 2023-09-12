import 'package:cv_w_models/screens/cv_details_screen.dart';
import 'package:cv_w_models/widgets/text_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String fullName = 'Olatunbosun Micheal';
  String slackUserName = 'OlatunbosunMicheal';
  String githubHandle = 'https://github.com/Oc-ean';
  String bio = 'I am a flutter developer';

  void _edit(String newFullName, String newSlackUsername,
      String newGithubHandle, String newBio) async {
    setState(() {
      fullName = newFullName;
      slackUserName = newSlackUsername;
      githubHandle = newGithubHandle;
      bio = newBio;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cv view'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextTile(
                title: 'Full Name : ',
                text: fullName,
              ),
              const SizedBox(
                height: 10,
              ),
              TextTile(
                title: 'Slack UserName : ',
                text: slackUserName,
              ),
              const SizedBox(
                height: 10,
              ),
              TextTile(
                title: 'Github Handle : ',
                text: githubHandle,
              ),
              const SizedBox(
                height: 10,
              ),
              TextTile(
                title: 'Bio : ',
                text: bio,
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => CvEditScreen(
                          onSave: _edit,
                          currentFullName: fullName,
                          currentSlackUsername: slackUserName,
                          currentGithubHandle: githubHandle,
                          currentBio: bio,
                        ),
                      ),
                    );
                  },
                  child: const Text('Edit CV'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
