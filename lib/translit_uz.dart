library translit;

/// Simple dart package for converting Cyrillic symbols to Translit and back
class Translit {
  final Map _transliteratedSymbol = {
    'А': 'A',
    'Б': 'B',
    'В': 'V',
    'Г': 'G',
    'Д': 'D',
    'Ж': 'J',
    'З': 'Z',
    'И': 'I',
    'Й': 'Y',
    'К': 'K',
    'Қ': 'Q',
    'Л': 'L',
    'М': 'M',
    'Н': 'N',
    'О': 'O',
    'П': 'P',
    'Р': 'R',
    'С': 'S',
    'Т': 'T',
    'У': 'U',
    'Ф': 'F',
    'Х': 'X',
    'Ҳ': 'H',
    'Э': 'E',
    'а': 'a',
    'б': 'b',
    'в': 'v',
    'г': 'g',
    'д': 'd',
    //'е': 'e',
    'ж': 'j',
    'з': 'z',
    'и': 'i',
    'й': 'y',
    'к': 'k',
    'қ': 'q',
    'л': 'l',
    'м': 'm',
    'н': 'n',
    'о': 'o',
    'п': 'p',
    'р': 'r',
    'с': 's',
    'т': 't',
    'у': 'u',
    'ф': 'f',
    'х': 'x',
    'ҳ': 'h',
    'э': 'e',
  };

  final Map _complicatedSymbols = {
    'Ғ': "G‘",
    'Е': 'Ye',
    'Ё': 'Yo',
    'Ў': "o‘",
    'Ш': 'Sh',
    'Ц': 'Ts',
    'Ч': 'Ch',
    'Ю': 'Yu',
    'Я': 'Ya',
    'Бе': 'Be',
    'Ве': 'Ve',
    'Ге': 'Ge',
    'Де': 'De',
    'Же': 'Je',
    'Зе': 'Ze',
    'Ке': 'Ke',
    'Ле': 'Le',
    'Ме': 'Me',
    'Не': 'Ne',
    'Пе': 'Pe',
    'Ре': 'Re',
    'Се': 'Ce',
    'Те': 'Te',
    'Фе': 'Fe',
    'Це': 'Tse',
    'Че': 'Che',
    'Ше': 'She',
    'ғ': "g‘",
    //'ае': 'aye',
    //'oе': 'oye',
    // 'ее': 'eye',
    'е': 'ye',
    'ё': 'yo',
    'ў': "o‘",
    'ш': 'sh',
    'ц': 'ts',
    'ч': 'ch',
    'ъ': "‘",
    'ь': "‘",
    'ю': 'yu',
    'я': 'ya',
    'бе': 'be',
    'ве': 've',
    'ге': 'ge',
    'де': 'de',
    'же': 'je',
    'зе': 'ze',
    'ке': 'ke',
    'ле': 'le',
    'ме': 'me',
    'не': 'ne',
    'ое': 'oye',
    'пе': 'pe',
    'ре': 're',
    'се': 'se',
    'те': 'te',
    'фе': 'fe',
    'це': 'tse',
    'че': 'che',
    'ше': 'she',
  };

  /// Method for converting from translit for the [source] value
  String unTranslit({String source}) {
    if (source == null || source.isEmpty) return source;

    var regExp = RegExp(
      r'([a-z]+)',
      caseSensitive: false,
      multiLine: true,
    );

    if (!regExp.hasMatch(source)) return source;

    var sourceSymbols = [];
    var unTranslit = [];
    var deTransliteratedSymbol = {};

    _complicatedSymbols.forEach((key, value) {
      source = source.replaceAll(value, key);
    });

    sourceSymbols = source.split('');

    _transliteratedSymbol.forEach((key, value) {
      deTransliteratedSymbol[value] = key;
    });

    for (final element in sourceSymbols) {
      unTranslit.add(deTransliteratedSymbol.containsKey(element)
          ? deTransliteratedSymbol[element]
          : element);
    }

    return unTranslit.join();
  }

  /// Method for converting to translit for the [source] value
  String toTranslit({String source}) {
    if (source == null || source.isEmpty) return source;

    var regExp = RegExp(
      r'([а-я]+)',
      caseSensitive: false,
      multiLine: true,
    );

    if (!regExp.hasMatch(source)) return source;

    var translit = [];
    var sourceSymbols = [];

    sourceSymbols = source.split('');

    _transliteratedSymbol.addAll(_complicatedSymbols);

    for (final element in sourceSymbols) {
      translit.add(_transliteratedSymbol.containsKey(element)
          ? _transliteratedSymbol[element]
          : element);
    }

    return translit.join();
  }
}
