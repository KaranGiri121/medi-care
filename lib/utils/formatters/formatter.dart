class Formatter{



  static String formatPhoneNumber(String phoneNumber) {
    // Assuming a 10-digit US phone number format: (123) 456-7890
    if (phoneNumber.length == 10) {
      return '+91 $phoneNumber';
    } else if (phoneNumber.length > 10) {
      return '(${phoneNumber.substring(0, phoneNumber.length-10)}) $phoneNumber';
    }
    // Add more custom phone number formatting logic for different formats if needed.
    return phoneNumber;
  }
}