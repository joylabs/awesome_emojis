import '../emoji.dart';

extension EmojiSkinTone on Emoji {
  List<Emoji> addSkinToneEntries() {
    final toned = List.generate(5, (index) {
      final (toneValue, toneHex, short) = switch (index) {
        0 => ('light', '\u{1F3FB}', '_tone1'),
        1 => ('medium-light', '\u{1F3FC}', '_tone2'),
        2 => ('medium', '\u{1F3FD}', '_tone3'),
        3 => ('medium-dark', '\u{1F3FE}', '_tone4'),
        _ => ('dark', '\u{1F3FF}', '_tone5'),
      };
      return Emoji(
        name: 'handshake: $toneValue skin tone',
        char: '\u{1F91D}$toneHex',
        shortName: 'handshake$short',
        emojiGroup: EmojiGroup.peopleBody,
        emojiSubgroup: EmojiSubgroup.hands,
        keywords: keywords,
        modifiable: true,
      );
    });
    return [
      this,
      ...toned,
    ];
  }
}
