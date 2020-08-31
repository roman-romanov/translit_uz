import 'package:translit_uz/translit_uz.dart';

main() {
  String forTransliterate =
      'Lorem Ипсумнинг кўплаб вариантлари мавжуд, аммо уларнинг аксарияти ҳар доим ҳам лотин тилига ўхшаш бўлмаган кулгили қўшимчалар ёки сўзлар каби мақбул модификацияларга ега емас. Агар жиддий лойиҳа учун Lorem Ipsum керак бўлса, сиз, еҳтимол, бир хат ўртасида яширин баъзи ҳазил истамайман. Бундан ташқари, бошқа барча таниқли Lorem Ipsum генераторлари бир хил матндан фойдаланадилар, улар керакли ҳажмга етгунга қадар такрорлайдилар. Бу generator бу ерда таклиф фақат реал Lorem Ipsum generator қилади. Унда 200 дан ортиқ лотинча сўзлар луғати ҳамда гап моделлари мажмуасидан фойдаланилади.';

  String translited = Translit().toTranslit(source: forTransliterate);
  String unTranslited = Translit().unTranslit(source: translited);

  print('Original text - $forTransliterate');
  print('Cyrilic to translit - $translited');
  print('Translit to cyrilic - $unTranslited');
}
