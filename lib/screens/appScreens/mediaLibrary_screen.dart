// ignore_for_file: prefer_const_constructors
import 'package:flutter/cupertino.dart';
class MediaLibraryScreen extends StatefulWidget {
  const MediaLibraryScreen({Key? key}) : super(key: key);

  @override
  State<MediaLibraryScreen> createState() => _MediaLibraryScreenState();
}

class _MediaLibraryScreenState extends State<MediaLibraryScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Media'),
    );
  }
}
