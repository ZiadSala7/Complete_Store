class FontFamilyHelper {
  static const String arabicFont = 'cairo';
  static const String englishFont = 'poppins';

  static String getLocalizedFontFamily() {
    String currentLanguage = 'ar';
    return currentLanguage == 'ar' ? arabicFont : englishFont;
  }
}
