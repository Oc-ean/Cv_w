import 'package:cv_w_models/utils/const.dart';
import 'package:flutter/material.dart';

class CvEditScreen extends StatelessWidget {
  final Function(String, String, String, String) onSave;
  final String currentFullName;
  final String currentSlackUsername;
  final String currentGithubHandle;
  final String currentBio;

  const CvEditScreen(
      {super.key,
      required this.onSave,
      required this.currentFullName,
      required this.currentSlackUsername,
      required this.currentGithubHandle,
      required this.currentBio});

  @override
  @override
  Widget build(BuildContext context) {
    fullNameController.text = currentFullName;
    slackUsernameController.text = currentSlackUsername;
    githubHandleController.text = currentGithubHandle;
    bioController.text = currentBio;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cv Edit'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: fullNameController,
              maxLines: 2,
              decoration: const InputDecoration(labelText: 'Full Name'),
            ),
            TextField(
              controller: slackUsernameController,
              maxLines: 2,
              decoration: const InputDecoration(labelText: 'Slack Username'),
            ),
            TextField(
              controller: githubHandleController,
              maxLines: 2,
              decoration: const InputDecoration(labelText: 'GitHub Handle'),
            ),
            TextField(
              controller: bioController,
              maxLines: 2,
              decoration: const InputDecoration(labelText: 'Bio'),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                onSave(
                  fullNameController.text,
                  slackUsernameController.text,
                  githubHandleController.text,
                  bioController.text,
                );
                Navigator.of(context).pop();
              },
              child: const Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
