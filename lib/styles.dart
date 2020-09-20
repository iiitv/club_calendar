import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Style {
	Color getBackgroundColor() {
		return Color(0xff313131);
	}

	Color getButtonsColor() {
		return Color(0xffF48076);
	}

	Color getFontColor() {
		return Color(0xffE5E5E5);
	}

	// Map<String, Color> getLoginScreenBackground() {
	//   return {
	//     'bottom': Color(0xff434343),
	//     'top': Color(0xff575757),
	//     'background': Color(0xff313131)
	//   };
	// }

	double elevation() {
		return 10.0;
	}
	
	static const Color defaultColor = Color(0xffE5E5E5);
	Color optional;

	TextStyle titleStyle({optional= defaultColor}) {
		return GoogleFonts.montserrat(
				fontSize: 24, color: optional, fontWeight: FontWeight.w500);
	}

	TextStyle headingStyle({optional= defaultColor}) {
		return GoogleFonts.montserrat(
				fontSize: 20, color: optional, fontWeight: FontWeight.w500);
	}

	TextStyle descriptionStyle({optional= defaultColor}) {
		return GoogleFonts.roboto(
				fontSize: 18, color: optional, fontWeight: FontWeight.w400);
	}


	List<BoxShadow> shadow() {
		return [
			BoxShadow(
				color: Color(0xff585858),
				blurRadius: 12,
				offset: Offset(-4, -4),
			),
			BoxShadow(
				color: Color(0xff000000),
				blurRadius: 4,
				offset: Offset(0, 4),
			),
		];
	}


}
