import 'package:flutter/cupertino.dart';
import 'package:playing_cards/playing_cards.dart';

final handCard = <Widget>[
  PlayingCardView(card: PlayingCard(Suit.diamonds, CardValue.king)),
  PlayingCardView(card: PlayingCard(Suit.diamonds, CardValue.queen)),
  PlayingCardView(card: PlayingCard(Suit.clubs, CardValue.ace)),
  PlayingCardView(card: PlayingCard(Suit.spades, CardValue.five)),
  PlayingCardView(card: PlayingCard(Suit.hearts, CardValue.three)),
  PlayingCardView(card: PlayingCard(Suit.diamonds, CardValue.six)),
  PlayingCardView(card: PlayingCard(Suit.clubs, CardValue.king)),
  PlayingCardView(card: PlayingCard(Suit.hearts, CardValue.eight)),
  PlayingCardView(card: PlayingCard(Suit.clubs, CardValue.nine)),
  PlayingCardView(card: PlayingCard(Suit.diamonds, CardValue.ace)),
  PlayingCardView(card: PlayingCard(Suit.spades, CardValue.two)),
  PlayingCardView(card: PlayingCard(Suit.spades, CardValue.four)),
  PlayingCardView(card: PlayingCard(Suit.diamonds, CardValue.five)),
];
