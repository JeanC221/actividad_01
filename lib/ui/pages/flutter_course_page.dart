import 'package:flutter/material.dart';

class FlutterCoursePage extends StatelessWidget {
  const FlutterCoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      // you may remove this widget if you don't want to use it
      child: Column(
        children: <Widget>[
          buildHeader(),
          buildCourseFocus(),
          buildModules(),
          buildProjectList(),
        ],
      ),
    ));
  }

  Widget buildHeader() {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.blue.shade900,
      child: Row(
        children: [
          const Text(
            "Flutter course",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          const Spacer(),
          const Icon(Icons.search, color: Colors.white),
          const SizedBox(width: 16),
          const Icon(Icons.notifications, color: Colors.white),
          const SizedBox(width: 16),
        ],
      ),
    );
  }

  Widget buildCourseFocus() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const Text(
            "Course focus",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Container(height: 6, color: Colors.blue),
              ),
              Expanded(
                flex: 3,
                child: Container(height: 6, color: Colors.red),
              ),
              Expanded(
                flex: 2,
                child: Container(height: 6, color: Colors.yellow),
              ),
              Expanded(
                flex: 1,
                child: Container(height: 6, color: Colors.grey),
              ),
            ],
          ),
          const SizedBox(height: 4),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("UI Develoment"),
              Text("Architecture"),
              Text("Desing thinking"),
              Text("Texting"),
            ],
          ),
          const Divider(),
        ],
      ),
    );
  }

  Widget buildModules() {
    return Column(
      children: [
        const Text("Modules"),
        SizedBox(
          height: 100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              buildModuleItem(Icons.book, 'Introduction', Colors.blue),
              buildModuleItem(Icons.design_services, 'UX design', Colors.red),
              buildModuleItem(Icons.storage, 'State management', Colors.orange),
              buildModuleItem(Icons.bug_report, 'Testing', Colors.grey),
              buildModuleItem(Icons.network_check, 'Networking', Colors.blue),
            ],
          ),
        ),
        const Divider(),
      ],
    );
  }

  Widget buildModuleItem(IconData icon, String label, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.grey[200],
            child: Icon(icon, size: 30, color: color),
          ),
          const SizedBox(height: 4),
          Text(label),
        ],
      ),
    );
  }

  Widget buildProjectList() {
    return const Text("Projects");
  }
}
