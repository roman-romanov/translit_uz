# About

[![Build Status](https://travis-ci.com/roman-romanov/translit_uz.svg?branch=master)](https://travis-ci.org/roman-romanov/translit_uz_)
[![Pub Package](https://img.shields.io/pub/v/translit.svg)](https://pub.dartlang.org/packages/translit_uz)

Simple dart package for converting Cyrillic symbols to Translit and back

Reverse transliteration into Cyrillic can not always completely convert the text to the original. Please keep this in mind when using this module in your projects.

## Examples

### Convert text to translit

```dart
import 'package:translit_uz/translit_uz.dart';

String text = Translit().toTranslit(source: 'Салом дунё');
```

Салом дунё > Salom dunyo!


### Convert text from transliterated

```dart
import 'package:translit/translit.dart';

String text = Translit().unTranslit(source: 'Salom dunyo');
```

Salom dunyo > Салом дунё

## Contribute

Please feel free to fork, improve, make pull requests or fill issues. I'll be glad to fix bugs you encountered or improve the extension.
