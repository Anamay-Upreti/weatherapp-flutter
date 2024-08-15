import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:weatherapp/widgets/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _cityController = TextEditingController();
  final Constants _constants = Constants();

  // Access API key from the .env file
  static String API_KEY = dotenv.env['apiKey']!;
 
  String location = 'New Delhi';
  String weatherIcon = 'heavy cloudy.png';
  int temperature = 0;
  int humidity = 0;
  int windSpeed = 0;
  int cloud = 0;
  String currentDate = '';

  List hourlyWeatherForecast = [];
  List dailyWeatherForecast = [];
  String currentWeatherStatus = '';
  //api call
  String searchWeatherAPI = "http://api.weatherapi.com/v1/current.json?key=$API_KEY&days=7&q=";
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Container(
        width: size.width,
        height: size.height,
        padding: const EdgeInsets.only(top: 70, left: 10, right: 10),
      ),
    );
  }
}
