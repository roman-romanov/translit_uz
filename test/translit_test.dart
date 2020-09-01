import 'package:test/test.dart';
import 'package:translit_uz/translit_uz.dart';

void main() {
  test('words translit', () {
    Translit translit = Translit();
    expect(translit.toTranslit(source: 'салом дунё'), 'salom dunyo');
    expect(translit.toTranslit(source: 'Даъват'), 'Da\'vat');
    expect(translit.toTranslit(source: 'Лекин'), 'Lekin');
  });

  test('words untranslit', () {
    Translit translit = Translit();
    expect(translit.unTranslit(source: 'salom dunyo'), 'салом дунё');
    expect(translit.unTranslit(source: 'Da\'vat'), 'Даъват');
    expect(translit.unTranslit(source: 'Лекин'), 'Lekin');
  });

  test(
    'translit text',
    () {
      expect(
          Translit().toTranslit(
              source:
                  'Оғизга кирган нарса одамни ҳаром қилмайди, балки оғиздан чиқадиган нарса одамни ҳаром қилади'),
          'Og‘izga kirgan narsa odamni harom qilmaydi, balki og‘izdan chiqadigan narsa odamni harom qiladi');
    },
  );

  test(
    'untranslit text',
    () {
      expect(
          Translit().unTranslit(
              source:
                  'Og‘izga kirgan narsa odamni harom qilmaydi, balki og\‘izdan chiqadigan narsa odamni harom qiladi'),
          'Оғизга кирган нарса одамни ҳаром қилмайди, балки оғиздан чиқадиган нарса одамни ҳаром қилади');
    },
  );

  test('other', () {
    Translit translit = Translit();
    expect(translit.toTranslit(source: null), null);
    expect(translit.toTranslit(source: ""), "");
    expect(translit.unTranslit(source: null), null);
    expect(translit.unTranslit(source: ""), "");
  });
}
