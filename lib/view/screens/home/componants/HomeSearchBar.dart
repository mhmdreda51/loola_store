import 'package:flutter/material.dart';
import 'package:loola_store/constants/app_colors.dart';
import 'package:loola_store/core/router/router.dart';
import 'package:loola_store/view/screens/search/search_screen.dart';

class HomeSearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 38,
      child: TextField(
        onTap: () => MagicRouter.navigateTo(SearchScreen()),
        cursorColor: Colors.black,
        keyboardType: TextInputType.text,
        readOnly: true,
        style: const TextStyle(
          color: Colors.black,
        ),
        decoration: InputDecoration(
          fillColor: Colors.grey.shade200,
          // prefixIcon: prefixIcon,
          // suffixIcon: suffixIcon,
          hintText: "بحث",
          suffixIcon: const Padding(
            padding: EdgeInsets.only(top: 12, bottom: 12),
            child: Image(
              image: AssetImage("assets/searchicon.png"),
              height: 50,
              width: 50,
            ),
          ),
          contentPadding: const EdgeInsets.only(top: 10, bottom: 10),
          hintTextDirection: TextDirection.rtl,
          hintStyle: const TextStyle(
            color: AppColors.darkBink,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          filled: false,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.darkBink),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.darkBink),
          ),
          errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.darkBink),
          ),
          focusedErrorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.darkBink),
          ),
        ),
      ),
    );
  }
}
