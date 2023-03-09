import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Permissions",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            onPressed: () {
              openAppSettings();
            },
            icon: const Icon(Icons.settings,color: Colors.white),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 150,
              child: OutlinedButton(
                onPressed: () async {
                  PermissionStatus Status = await Permission.camera.request();
                  if (Status == PermissionStatus.granted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          "Permission is granted",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                          ),
                        ),
                        elevation: 1,
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          "Permission is Denied",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 18,
                          ),
                        ),
                        elevation: 1,
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  }
                },
                style: buttonStyle,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Icon(CupertinoIcons.camera, color: Colors.blue),
                    Text(
                      "Camera",
                      style: textStyle,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 150,
              child: OutlinedButton(
                onPressed: () async {
                  PermissionStatus Status = await Permission.photos.request();
                  if (Status == PermissionStatus.granted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          "Permission is granted",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 18,
                          ),
                        ),
                        elevation: 1,
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          "Permission is Denied",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 18,
                          ),
                        ),
                        elevation: 1,
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  }
                },
                style: buttonStyle,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Icon(CupertinoIcons.photo,color: Colors.blue),
                    Text(
                      "Photos",
                      style: textStyle,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 150,
              child: OutlinedButton(
                onPressed: () async {
                  PermissionStatus Status = await Permission.storage.request();
                  if (Status == PermissionStatus.granted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          "Permission is granted",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 18,
                          ),
                        ),
                        elevation: 1,
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          "Permission is Denied",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 18,
                          ),
                        ),
                        elevation: 1,
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  }
                },
                style: buttonStyle,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Icon(
                      CupertinoIcons.square_stack_3d_down_right_fill,
                    color: Colors.blue),
                    Text(
                      "Storage",
                      style: textStyle,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 150,
              child: OutlinedButton(
                onPressed: () async {
                  PermissionStatus Status =
                  await Permission.microphone.request();
                  if (Status == PermissionStatus.granted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          "Permission is granted",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 18,
                          ),
                        ),
                        elevation: 1,
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          "Permission is Denied",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 18,
                          ),
                        ),
                        elevation: 1,
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  }
                },
                style: buttonStyle,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Icon(CupertinoIcons.mic, color: Colors.blue),
                    Text(
                      "Microphone",
                      style: textStyle,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 150,
              child: OutlinedButton(
                onPressed: () async {
                  PermissionStatus Status = await Permission.calendar.request();
                  if (Status == PermissionStatus.granted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          "Permission is granted",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 18,
                          ),
                        ),
                        elevation: 1,
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          "Permission is Denied",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 18,
                          ),
                        ),
                        elevation: 1,
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  }
                },
                style: buttonStyle,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Icon(CupertinoIcons.calendar,color: Colors.blue),
                    Text(
                      "Calendar",
                      style: textStyle,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 150,
              child: OutlinedButton(
                onPressed: () async {
                  PermissionStatus Status = await Permission.phone.request();
                  if (Status == PermissionStatus.granted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          "Permission is granted",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 18,
                          ),
                        ),
                        elevation: 1,
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          "Permission is Denied",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 18,
                          ),
                        ),
                        elevation: 1,
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  }
                },
                style: buttonStyle,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Icon(CupertinoIcons.phone, color: Colors.blue),
                    Text(
                      "Phones",
                      style: textStyle,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 150,
              child: OutlinedButton(
                onPressed: () async {
                  PermissionStatus Status = await Permission.audio.request();
                  if (Status == PermissionStatus.granted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          "Permission is granted",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 18,
                          ),
                        ),
                        elevation: 1,
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          "Permission is Denied",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 18,
                          ),
                        ),
                        elevation: 1,
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  }
                },
                style: buttonStyle,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Icon(CupertinoIcons.speaker_3, color: Colors.blue),
                    Text(
                      "Audio",
                      style: textStyle,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 150,
              child: OutlinedButton(
                onPressed: () async {
                  PermissionStatus Status = await Permission.location.request();
                  if (Status == PermissionStatus.granted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          "Permission is granted",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 18,
                          ),
                        ),
                        elevation: 1,
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          "Permission is Denied",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 18,
                          ),
                        ),
                        elevation: 1,
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  }
                },
                style: buttonStyle,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Icon(CupertinoIcons.location_circle_fill,
                        color: Colors.blue),
                    Text(
                      "Location",
                      style: textStyle,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 150,
              child: OutlinedButton(
                onPressed: () async {
                  PermissionStatus Status =
                  await Permission.notification.request();
                  if (Status == PermissionStatus.granted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          "Permission is granted",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 18,
                          ),
                        ),
                        elevation: 1,
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          "Permission is Denied",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 18,
                          ),
                        ),
                        elevation: 1,
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  }
                },
                style: buttonStyle,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Icon(CupertinoIcons.bell, color: Colors.blue),
                    Text(
                      "Notification",
                      style: textStyle,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 150,
              child: OutlinedButton(
                onPressed: () async {
                  PermissionStatus Status = await Permission.videos.request();
                  if (Status == PermissionStatus.granted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          "Permission is granted",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 18,
                          ),
                        ),
                        elevation: 1,
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          "Permission is Denied",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 18,
                          ),
                        ),
                        elevation: 1,
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  }
                },
                style: buttonStyle,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Icon(CupertinoIcons.videocam_circle_fill,
                        color: Colors.blue),
                    Text(
                      "Videos",
                      style: textStyle,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextStyle textStyle = const TextStyle(
    color: Colors.white,
  );

  ButtonStyle buttonStyle = ButtonStyle(
    side: MaterialStateProperty.all(
      const BorderSide(color: Colors.blue, width: 2),
    ),
    backgroundColor: MaterialStateProperty.all(
       Colors.black87
    ),
  );
}
