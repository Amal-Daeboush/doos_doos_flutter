import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constant/app_colors.dart';
import '../../../../core/constant/styles.dart';

class CustomTextFormField extends StatelessWidget {
  final String? hintText;
  final Widget? helper;
  final String? hintTextInField;
  final String? labelText;
  final Color? borderColor;
  final Icon? prefixIcon;
  final Icon? suffixIcon;
  final BorderRadius? borderRadius;
  final Color? color;
  final double? width;
  final bool readOnly ;
  final double? height;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final void Function(String)? onChanged;
  final String? Function(String?)?
  validator; // ملاحظة: هنا يجب أن تكون String? Function(String?) لجعلها متوافقة
  final int? maxLength;
  final bool obscureText;
 final Color? fillColor;
  final bool isPassWord;
  final Icon? icon;
 final void Function()? onTap;
  final void Function()? onTapobscure;

  const CustomTextFormField({
    super.key,
    this.hintText,
    this.color,
    this.prefixIcon,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.validator,
    this.onChanged,
    this.maxLength,
    required this.obscureText,
    required this.isPassWord,
    this.icon,
    this.onTapobscure,
    this.labelText,
    this.borderRadius,
    this.hintTextInField,
    this.helper,
    this.suffixIcon,
    this.borderColor,
    this.width, this.fillColor, this.height,  this.readOnly=false, this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
        hintText != null ?    Text(hintText!, style: Styles.style16Montserrat):SizedBox(),

          hintText != null ? SizedBox(height: 10.h) : SizedBox(
            height: 5.h,
          ),
          SizedBox(
            //  height: 50.h,
            child: TextFormField(onTap:onTap ,
              readOnly: readOnly,
              validator:
                  validator ??
                  (value) {
                    if (value == null || value.isEmpty) {
                      return 'من فضلك املىء الحقل';
                    }
                    return null;
                  },
              controller: controller,
              keyboardType: keyboardType,
              obscureText: obscureText,

              onChanged: onChanged,
              maxLines: maxLength,
              decoration: InputDecoration(
                suffixIcon: suffixIcon,
                //  helperText: hintTextInField,
                labelText: labelText,
                //  labelStyle: Styles.style4.copyWith(color: AppColors.black),
                prefixIcon: prefixIcon,
                suffix: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child:
                      isPassWord
                          ? InkWell(
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            onTap: onTapobscure,
                            child: icon!,
                          )
                          : null,
                ),
                helper: helper,
                hintText: hintTextInField,
                fillColor:fillColor?? Colors.transparent,
                filled: true,
                hintStyle: Styles.style12.copyWith(color: AppColors.greyColor4),
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 3,
                  horizontal: 15,
                ), // التحكم في المساحة الداخلية
                enabledBorder: OutlineInputBorder(
                  borderRadius:
                      borderRadius ?? BorderRadius.all(Radius.circular(30)),
                  borderSide: BorderSide(
                    color: borderColor ?? AppColors.greyColor,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius:
                      borderRadius ?? BorderRadius.all(Radius.circular(30)),
                  borderSide: BorderSide(
                    color: borderColor ?? AppColors.greyColor,
                  ),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius:
                      borderRadius ?? BorderRadius.all(Radius.circular(30)),
                  borderSide: BorderSide(color: AppColors.red),
                ),
                border: OutlineInputBorder(
                  borderRadius:
                      borderRadius ?? BorderRadius.all(Radius.circular(30)),
                  borderSide: BorderSide(
                    color: borderColor ?? AppColors.greyColor,
                  ),
                ),
                errorMaxLines: 2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
