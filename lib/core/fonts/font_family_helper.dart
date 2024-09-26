class FontFamilyHelper {
  static const String arabicFont = 'cairo';
  static const String englishFont = 'poppins';

  static String getLocalizedFontFamily() {
    //Shared_Preferences will be used here
    String currentLanguage = 'ar';
    return currentLanguage == 'ar' ? arabicFont : englishFont;
  }
}
