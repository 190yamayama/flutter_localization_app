# flutter_localization_app

多言語対応のサンプルアプリケーション

## 多言語化の概要

多言語対応の例としてDart intl toolsを利用します。
intl toolsがarbファイルを作成して、そのarbファイルからdartファイルの生成を行います。
文言を追加する場合はarbファイルに追記して3.のスクリプトを実行してdartファイルを生成します。
アプリからはL18nクラスを経由してローカライズされた文言を取得します。

本プロジェクトのl10nパッケージをコピーして使用してもOK。

### 流れ

1.必要パッケージimport
  pubspec.yaml
>  flutter_localizations:
>    sdk: flutter
>  intl: any

2.ローカライズ用のクラス（サンプルではL10n）を準備

3.プロジェクトルートディレクトリで以下のコマンドを実行
>flutter pub get
>flutter pub pub run intl_translation:extract_to_arb --output-dir=lib/l10n lib/main.dart
intl_messages.arbが生成される


4.必要な言語分のarbファイルを用意

5.以下のスクリプトを実行しdartファイル生成
iOS
>flutter pub pub run intl_translation:generate_from_arb --output-dir=lib/l10n --no-use-deferred-loading lib/main.dart lib/l10n/intl_*.arb

Windows（windowsの場合はワイルドカードがうまく機能しないので個別に実行する必要がある）
>flutter pub pub run intl_translation:generate_from_arb --output-dir=lib/l10n --no-use-deferred-loading lib/main.dart lib/l10n/intl_en.arb
>flutter pub pub run intl_translation:generate_from_arb --output-dir=lib/l10n --no-use-deferred-loading lib/main.dart lib/l10n/intl_ja.arb
>flutter pub pub run intl_translation:generate_from_arb --output-dir=lib/l10n --no-use-deferred-loading lib/main.dart lib/l10n/intl_zh.arb

6.min.dartにlocalizationsDelegatesとsupportedLocalesを指定

7.動かしてみる


### 参考サイト
https://medium.com/flutter-jp/intl-beb5b9e8ee73
