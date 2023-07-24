import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors_res.dart';

const st_normalStyle = TextStyle(
  fontSize: 14,
);

const st_titleStyle = TextStyle(
  fontSize: 35,
);

const st_boldStyle = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w600,
);

const errorStyle = TextStyle(
  fontSize: 14,
  color: Colors.red,
);

const smallCategoryTitleStyle = TextStyle(
  fontSize: 11,
  fontWeight: FontWeight.w400,
  color: Colors.white54,
);

///
///

const st_lable_f14_grey_w400 = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w400,
  color: fontColor_grey,
);
const st_lable_f14_white_w400 = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w400,
  color: Colors.white,
);

const st_lable_f14_blue_w400 = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w400,
  color: fontColor_blue,
);
const st_lable_f14_green_w600 = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w600,
  color: Colors.green,
);
const st_lable_f14_green_w400 = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w400,
  color: Colors.green,
);
const st_lable_f14_white_w600 = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w600,
  color: Colors.white,
);
// const st_lable_f14_white_w400 = TextStyle(
//   fontSize: 14,
//   fontWeight: FontWeight.w400,
//   color: Colors.white,
// );
const st_lable_f14_grey_w600 = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w600,
  color: fontColor_grey,
);
const st_lable_f18_grey_w600 = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w600,
  color: fontColor_grey,
);
const st_lable_f18_white_w600 = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w600,
  color: Colors.white,
);

const st_lable_f28_white_w800 = TextStyle(
  fontWeight: FontWeight.w800,
  fontSize: 28,
  color: Colors.white,
);

///
///
TextStyle st_bold1({required bool isMobile}) => GoogleFonts.russoOne(
      textStyle: TextStyle(
        fontSize: isMobile ? 30 : 60,
        fontWeight: FontWeight.bold,
      ),
    );
TextStyle st_bold2({required bool isMobile}) => GoogleFonts.russoOne(
      textStyle: TextStyle(
        fontSize: isMobile ? 15 : 30,
        fontWeight: FontWeight.bold,
      ),
    );
