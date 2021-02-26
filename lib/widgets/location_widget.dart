import 'package:flutter/material.dart';
import 'package:weather_app/models/location/weather/current/current_weather_model.dart';
import 'package:weather_app/presentation/color.dart';
import 'package:weather_app/presentation/strings.dart';
import 'package:weather_app/presentation/text_style.dart';

class LocationWidget extends StatelessWidget {
  const LocationWidget(
    this._weather, {
    Key key,
  }) : super(key: key);

  final CurrentWeather _weather;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: CustomColor.charlestonGreen,
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('assets/icon/${_weather.weatherIcon}.png'),
                height: 80,
                fit: BoxFit.fitHeight,
              ),
              Column(
                children: [
                  Text(
                    _weather.weatherText,
                    style: CustomTextStyle.montserratRegular16,
                  ),
                  Text(
                    '${_weather.temperature.metric.value}°C',
                    style: CustomTextStyle.montserratRegular16.copyWith(
                        fontSize: 50,
                        color: _setTemperatureColor(
                            _weather.temperature.metric.value.toInt())),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Row(
              children: [
                _buildCategoryText(Strings.realFeel),
                _buildValueText(
                    "${_weather.realFeelTemperature.metric.value}°C"),
                const SizedBox(width: 16),
                _buildCategoryText(Strings.pressure),
                _buildValueText(
                    "${_weather.pressure.metric.value} ${_weather.pressure.metric.unit}"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Row(
              children: [
                _buildCategoryText(Strings.wind),
                _buildValueText(
                    "${_weather.wind.speed.metric.value} ${_weather.wind.speed.metric.unit}"),
                const SizedBox(width: 16),
                _buildCategoryText(Strings.cloudCover),
                _buildValueText("${_weather.cloudCover}%"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Row(
              children: [
                _buildCategoryText(Strings.humidity),
                _buildValueText("${_weather.relativeHumidity}%"),
                const SizedBox(width: 16),
                _buildCategoryText(Strings.visibility),
                _buildValueText(
                    "${_weather.visibility.metric.value} ${_weather.visibility.metric.unit}"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryText(String text) {
    return Expanded(
      child: Text(
        text,
        style: CustomTextStyle.montserratRegular14,
      ),
    );
  }

  Widget _buildValueText(String text) {
    return Expanded(
      child: Text(
        text,
        style: CustomTextStyle.montserratSemiBold14,
        textAlign: TextAlign.end,
      ),
    );
  }

  Color _setTemperatureColor(int temperature) {
    if (temperature < 10)
      return Colors.blue;
    else if (temperature < 20)
      return Colors.black;
    else
      return Colors.red;
  }
}
