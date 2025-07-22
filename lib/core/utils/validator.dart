// import 'package:webcastle/core/utils/toast_helper.dart';

// class Validator {
//   static String? validateName(String value) {
//     if (value.isEmpty) {
//       showToast('Name is required');
//       return null;
//     }
//     if (!RegExp(r"^[a-zA-Z\s]{2,}$").hasMatch(value)) {
//       showToast('Enter a valid name');
//       return null;
//     }
//     return null;
//   }

//   static String? validateEmail(String value) {
//     if (value.isEmpty) {
//       showToast('Email is required');
//       return null;
//     }
//     if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}$').hasMatch(value)) {
//       showToast('Enter a valid email address');
//       return null;
//     }
//     return null;
//   }

//   static String? validatePassword(String value) {
//     if (value.isEmpty) {
//       showToast('Password is required');
//       return null;
//     }
//     if (value.length < 6) {
//       showToast('Password must be at least 6 characters long');
//       return null;
//     }
//     return null;
//   }

//   static String? validateAddress(String value) {
//     if (value.isEmpty) {
//       showToast('Address is required');
//       return null;
//     }
//     if (value.length < 5) {
//       showToast('Enter a valid address');
//       return null;
//     }
//     return null;
//   }

//   static String? validateSuburb(String value) {
//     if (value.isEmpty) {
//       showToast('Suburb is required');
//       return null;
//     }
//     return null;
//   }

//   static String? validateState(String value) {
//     if (value.isEmpty) {
//       showToast('State is required');
//       return null;
//     }
//     return null;
//   }

//   static String? validatePostcode(String value) {
//     if (value.isEmpty) {
//       showToast('Postcode is required');
//       return null;
//     }
//     if (!RegExp(r'^\d{4,6}$').hasMatch(value)) {
//       showToast('Enter a valid postcode');
//       return null;
//     }
//     return null;
//   }

//   static String? validatePhone(String value) {
//     if (value.isEmpty) {
//       showToast('Contact number is required');
//       return null;
//     }
//     if (!RegExp(r'^[0-9]{10}$').hasMatch(value)) {
//       showToast('Enter a valid 10-digit contact number');
//       return null;
//     }
//     return null;
//   }
// }
