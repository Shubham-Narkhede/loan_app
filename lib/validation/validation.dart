import 'package:flutter/material.dart';

class ValidationData {
  static const white = Color(0xFFFFFF);
  
  static String firstNameValidate(String firstname) {
    String patttern = r'^[a-z A-Z,.\-]+$';
    RegExp regExp = new RegExp(patttern);
    if (firstname.length == 0) {
      return 'Please enter name';
    } else if (!regExp.hasMatch(firstname)) {
      return 'Please enter valid first name';
    }
    return null;
  }

  static String materialValidate(String lastname) {
    String patttern = r'^[a-z A-Z,.\-]+$';
    RegExp regExp = new RegExp(patttern);
    if (lastname.length == 0) {
      return 'Material status is required';
    } else if (!regExp.hasMatch(lastname)) {
      return 'Please enter valid material status';
    }
    return null;
  }

  static String dateValidate(String passValue) {
    if (passValue.length == 0) {
      return 'Please enter Date';
    } else if (passValue.length < 3) {
      return ' ';
    }
  }

  static String workplaceValidate(String passValue) {
    if (passValue.length == 0) {
      return 'Please enter workplace address';
    } else if (passValue.length < 5) {
      return ' ';
    }
  }

  static String yearValidate(String passValue) {
    if (passValue.length == 0) {
      return 'Please enter Year';
    } else if (passValue.length < 3 && passValue.length >= 4) {
      return 'year must be greater than 3 characters';
    }
    return null;
  }

  static String ktpValidate(String passValue) {
    if (passValue.length == 0) {
      return 'Please enter KTP';
    } else if (passValue.length < 12) {
      return 'KTp number must be greater than 12 characters';
    }
    return null;
  }

  static String passwordValidate(String passValue) {
    if (passValue.length == 0) {
      return 'Please enter password';
    } else if (passValue.length < 6) {
      return 'password must be greater than 6 characters';
    }
    return null;
  }

  static String emailValidate(String value) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return "Please enter email";
    } else if (!regExp.hasMatch(value)) {
      return "Invalid Email";
    } else {
      return null;
    }
  }

  static String mobileValidate(String value) {
    String patttern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
    RegExp regExp = new RegExp(patttern);
    if (value.length == 0) {
      return 'Please enter mobile number';
    } else if (!regExp.hasMatch(value)) {
      return 'Please enter valid mobile number';
    }
    return null;
  }
}
