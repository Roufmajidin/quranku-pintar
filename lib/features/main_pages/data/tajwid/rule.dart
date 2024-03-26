class TajweedRule {
  final String textArabic;
  final String description;
  final List<String> tajweedRules;

  TajweedRule({
    required this.textArabic,
    required this.description,
    required this.tajweedRules,
  });
}

List<TajweedRule> alFatihahTajweedRules = [
  TajweedRule(
    textArabic: 'الْحَمْدُ',
    description: 'Terdapat hukum tajwid Izhar qamariyah. Alasannya karena ada alif lam diikuti \'ha\'. Cara membacanya terang dan jelas.',
    tajweedRules: ['Izhar qamariyah'],
  ),
  TajweedRule(
    textArabic: 'رَبِّ',
    description: 'Ada hukum Tafhim, karena terdapat huruf \'ro\' bertanda baca fathah. Cara membacanya dilemahkan dan jelas.',
    tajweedRules: ['Tafhim'],
  ),
  TajweedRule(
    textArabic: 'الْعٰلَمِيْنَۙ',
    description: 'Terdapat Izhar qamariyah, karena ada alif lam diikuti \'ain. Lalu, ada juga mad thobi\'i karena terdapat huruf fathah diikuti alif.',
    tajweedRules: ['Izhar qamariyah', 'Mad thobi\'i'],
  ),
  TajweedRule(
    textArabic: 'مَٰلِكِ',
    description: 'Ada hukum tajwid Mad thobi\'i, karena terdapat fathah yang diikuti alif. Cara membacanya terang dan jelas.',
    tajweedRules: ['Mad thobi\'i'],
  ),
  TajweedRule(
    textArabic: 'يَوْمِ',
    description: 'Hukum tajwidnya Mad layyin, karena ada wawu sukun didahului fathah. Cara membacanya lunak dan lemas.',
    tajweedRules: ['Mad layyin'],
  ),
  TajweedRule(
    textArabic: 'ٱلدِّينِ',
    description: 'Ada hukum Idghom syamsyiyah, karena terdapat lam ta\'rif diikuti dal. Lalu, ada pula mad arid lissukun karena sebelum waqaf terdapat mad thobi\'i. Cara membacanya boleh panjang 4 harakat atau lebih.',
    tajweedRules: ['Idghom syamsyiyah', 'Mad arid lissukun'],
  ),
  TajweedRule(
    textArabic: 'إِيَّاكَ',
    description: 'Ada hukum Mad thobi\'i. Alasannya karena ada fathah diikuti alif. Cara membacanya terang dan jelas.',
    tajweedRules: ['Mad thobi\'i'],
  ),
  TajweedRule(
    textArabic: 'نَعْبُدُ',
    description: 'Terdapat hukum Mad arid lissukun, karena sebelum waqaf ada mad thobi\'i. Cara membacanya boleh panjang 4 harakat atau lebih.',
    tajweedRules: ['Mad arid lissukun'],
  ),
  TajweedRule(
    textArabic: 'ٱهْدِنَا',
    description: 'Hukumnya Idghom syamsyiah, karena ada lam ta\'rif diikuti \'shod\'. Cara membacanya dimasukan ke huruf \'shod\'.',
    tajweedRules: ['Idghom syamsyiah'],
  ),
  TajweedRule(
    textArabic: 'ٱلصِّرَٰطَ',
    description: 'Ada hukum Mad thobi\'i, karena terdapat tanda baca fathah diikuti alif. Cara membacanya terang dan jelas.',
    tajweedRules: ['Mad thobi\'i'],
  ),
  TajweedRule(
    textArabic: 'ٱلْمُسْتَقِيمَ',
    description: 'Terdapat hukum tajwid Idzhar qomariyah, karena ada alif lam diikuti mim. Lalu, ada mad arid lissukun karena sebelum waqaf didahului mad thobi\'i. Cara membacanya boleh panjang 4 harakat atau lebih.',
    tajweedRules: ['Idzhar qomariyah', 'Mad arid lissukun'],
  ),
  TajweedRule(
    textArabic: 'صِرَٰطَ',
    description: 'Ada hukum Mad thobi\'i, karena terdapat tanda baca fathah diikuti alif. Cara membacanya terang dan jelas.',
    tajweedRules: ['Mad thobi\'i'],
  ),
  TajweedRule(
    textArabic: 'ٱلَّذِينَ',
    description: 'Hukumnya adalah Idghom syamsyiah, karena ada lam ta\'rif diikuti lam. Kemudian, ada mad thobi\'i karena terdapat kasrah diikuti ya\' sukun. Cara membacanya terang dan jelas.',
    tajweedRules: ['Idghom syamsyiah', 'Mad thobi\'i'],
  ),
  TajweedRule(
    textArabic: 'أَنْعَمْتَ',
    description: 'Hukum tajwidnya Izhar halqi, karena ada nun mati bertemu \'ain. Lalu, ada izhar syafawi karena mim mati bertemu \'ta\'. Cara membacanya adalah jelas di mulut.',
    tajweedRules: ['Izhar halqi', 'Izhar syafawi'],
  ),
  TajweedRule(
    textArabic: 'عَلَيْهِمْ',
    description: 'Ada hukum Mad layyin, karena ada \'ya\' sukun didahului fathah. Cara membacanya terang di bibir dengan mulut tertutup.',
    tajweedRules: ['Mad layyin'],
  ),
  TajweedRule(
    textArabic: 'غَيْرِ',
     description: 'lunak dan lemas.',
    tajweedRules: ['Izhar syafawi', 'Mad layyin'],
  ),
  TajweedRule(
    textArabic: 'ٱلْمَغْضُوبِ',
    description: 'Terdapat Izhar qamariyah, karena ada lam ta\'rif diikuti mim. Kemudian, ada pula mad thobi\'i karena tanda dhummah diikuti \'wawu\' sukun. Cara membacanya terang dan jelas.',
    tajweedRules: ['Izhar qamariyah', 'Mad thobi\'i'],
  ),
  TajweedRule(
    textArabic: 'وَلاَٱلضَّآلِّينَ',
    description: 'Hukum tajwidnya Idghom syamsyiyah karena ada lam ta\'rif diikuti dhod. Lalu, mad lazim kilmi muthaqqol, karena ada mad thobi\'i bertemu huruf bertanda baca tasydid. Kemudian, ada pula mad arid lissukun. Alasannya karena sebelum waqaf terdapat mad thobi\'i. Cara membacanya boleh panjang 4 harakat atau lebih.',
    tajweedRules: ['Idghom syamsyiyah', 'Mad lazim kilmi muthaqqol', 'Mad arid lissukun'],
  ),
];