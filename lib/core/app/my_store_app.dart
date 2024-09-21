import 'package:complete_store/core/app/widgets/builder_connectivity_method.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyStoreApp extends StatelessWidget {
  const MyStoreApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Asroo Store'),
          ),
        ),
        builder: builderConnectivityMethod,
      ),
    );
  }
}
