import 'package:flutter/material.dart';

class Appbars extends StatelessWidget {
  const Appbars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          title: const Text('Title'),
          centerTitle: true,
          shadowColor: Colors.transparent,
        ),
        const SizedBox(
          height: 16,
        ),
        AppBar(
          title: const Text('Title'),
          actions: const <Widget>[Icon(Icons.more_vert)],
          leading: const Icon(
            Icons.chevron_left,
          ),
          centerTitle: true,
          shadowColor: Colors.transparent,
        ),
        const SizedBox(
          height: 16,
        ),
        AppBar(
          title: const Text('Title'),
          leading: const Icon(
            Icons.chevron_left,
          ),
          centerTitle: true,
          shadowColor: Colors.transparent,
        ),
        const SizedBox(
          height: 16,
        ),
        AppBar(
          title: const Text(
            'Title',
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.attach_file,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.today,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
              ),
            ),
          ],
          leading: const Icon(
            Icons.chevron_left,
          ),
          centerTitle: false,
          shadowColor: Colors.transparent,
        ),
        const SizedBox(
          height: 16,
        ),
        AppBar(
          title: const Text('Title'),
          centerTitle: false,
          automaticallyImplyLeading: false,
          shadowColor: Colors.transparent,
        ),
        const SizedBox(
          height: 16,
        ),
        AppBar(
          title: const Text('Title'),
          actions: const <Widget>[Icon(Icons.more_vert)],
          leading: const Icon(
            Icons.chevron_left,
          ),
          centerTitle: true,
          elevation: 1,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
      ],
    );
  }
}
