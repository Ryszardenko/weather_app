import 'package:flutter/material.dart';
import 'package:weather_app/models/weather/current/current_weather_model.dart';
import 'package:weather_app/presentation/assets.dart';
import 'package:weather_app/presentation/color.dart';
import 'package:weather_app/presentation/strings.dart';
import 'package:weather_app/presentation/text_style.dart';
import 'package:weather_app/extensions/double_extensions.dart';

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
          _buildMainInfo(),
          _buildInfoRow(
            Strings.realFeel,
            "${_weather.realFeelTemperature.metric.value}°C",
            Strings.pressure,
            "${_weather.pressure.metric.value} ${_weather.pressure.metric.unit}",
          ),
          _buildInfoRow(
            Strings.wind,
            "${_weather.wind.speed.metric.value} ${_weather.wind.speed.metric.unit}",
            Strings.cloudCover,
            "${_weather.cloudCover}%",
          ),
          _buildInfoRow(
            Strings.humidity,
            "${_weather.relativeHumidity}%",
            Strings.visibility,
            "${_weather.visibility.metric.value} ${_weather.visibility.metric.unit}",
          ),
        ],
      ),
    );
  }

  Row _buildMainInfo() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image(
          image: CustomAssets().getIcon(_weather.weatherIcon),
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
                color:
                    _weather.temperature.metric.value.setColorDependsOnValue(),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Padding _buildInfoRow(
    String leftRowStringKey,
    String leftRowValue,
    String rightRowStringKey,
    String rightRowValue,
  ) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Expanded(
              child: Row(
            children: [
              _buildCategoryText(leftRowStringKey),
              _buildValueText(leftRowValue),
            ],
          )),
          const SizedBox(width: 16),
          Expanded(
              child: Row(
            children: [
              _buildCategoryText(rightRowStringKey),
              _buildValueText(rightRowValue),
            ],
          )),
        ],
      ),
    );
  }

  Widget _buildCategoryText(String stringKey) {
    return Expanded(
      child: Text(
        Strings().getString(stringKey),
        style: CustomTextStyle.montserratRegular14,
      ),
    );
  }

  Widget _buildValueText(String text) {
    return Text(
      text,
      style: CustomTextStyle.montserratSemiBold14,
      textAlign: TextAlign.end,
    );
  }
}
