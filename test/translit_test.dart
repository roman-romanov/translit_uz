import 'package:test/test.dart';
import 'package:translit_uz/translit_uz.dart';

void main() {
  test('words translit', () {
    Translit translit = Translit();
    expect(translit.toTranslit(source: 'Салом дунё'), 'Salom dunyo');
    expect(translit.toTranslit(source: 'Даъват'), 'Da‘vat');
    expect(translit.toTranslit(source: 'Лекин'), 'Lekin');
    expect(translit.unTranslit(source: 'Жўраев'), 'Jo‘rayev');
    expect(translit.unTranslit(source: 'ер'), 'yer');
  });

  test('words untranslit', () {
    Translit translit = Translit();
    expect(translit.unTranslit(source: 'Salom dunyo'), 'Салом дунё');
    expect(translit.unTranslit(source: 'Da‘vat'), 'Даъват');
    expect(translit.unTranslit(source: 'Lekin'), 'Лекин');
    expect(translit.unTranslit(source: 'Jo‘rayev'), 'Жўраев');
    expect(translit.unTranslit(source: 'yer'), 'ер');
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
