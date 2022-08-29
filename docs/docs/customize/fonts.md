# Fonts

## Use with your own font

1. Place your fonts in the `assets/fonts` folder.
2. Open `pubspec.yaml` and add your font in `fonts:` section.
3. Then add font name in the `lib/src/typography/fonts.dart` class.
4. Customize the text styles in `lib/src/typography` and change the `fontFamily` session to your font family.
5. Change the `_baseHeaderStyle` or `_baseTextStyle` to point to your font family, depends on which font you want to be applied.
6. Fully restart your app (not Hot Reload) to see changes.
