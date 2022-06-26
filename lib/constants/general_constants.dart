import 'package:flutter/material.dart';

const bool developmentMode = true;
const bool viewLog = true;
bool isRTL = false;

void setIsRTL(BuildContext context) => isRTL = Directionality.of(context)
    .toString()
    .contains(TextDirection.rtl.name.toLowerCase());

const String testImage = 'https://i.imgur.com/X30QPYP.jpg';
