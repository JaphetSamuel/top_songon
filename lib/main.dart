import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:songontop/screens/myhome.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() {
  // runApp(MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  Supabase(
    url: 'https://fmxsoluckogqxocwxvxo.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb2xlIjoiYW5vbiIsImlhdCI6MTYyNDM2OTA3MiwiZXhwIjoxOTM5OTQ1MDcyfQ.4sTfcoZbnG3qBv_xKfiJy6e3L1DCLndrLH9-uOPrz1Q',
    debug: true,
  );

  runApp(GetMaterialApp(
    theme:
        ThemeData(accentColor: Colors.greenAccent, primaryColor: Colors.green),
    home: MyHome(),
    debugShowCheckedModeBanner: false,
  ));
}
