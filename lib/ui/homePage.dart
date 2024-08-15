import 'dart:nativewrappers/_internal/vm/lib/internal_patch.dart';

import 'package:flutter/material.dart';
import 'package:weatherapp/widgets/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _cityController = TextEditingController();
  final Constants _constants = Constants();

  static String API_KEY = '6f7e3d0c2f944f3d933140532241508';
 
   String location = 'New Delhi';
   String weatherIcon = 'heavy cloudy.png';
   int temperature = 0;
   int humidity =0;
   int windSpeed = 0;
   int cloud = 0;
   String currentDate = '';

   List hourlyWeatherForecast = [];
   List dailyWeatherForecast = [];
   String currentWeatherStatus = '';
   
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}