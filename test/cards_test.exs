defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  setup _deck do
    {:ok, cards: ["Ace of Spades", "Two of Spades", "Three of Spades", "Four of Spades", "Five of Spades", "Six of Spades", "Seven of Spades", "Eight of Spades", "Nine of Spades", "Ten of Spades", "Jack of Spades", "Queen of Spades", "King of Spades", "Ace of Clubs", "Two of Clubs", "Three of Clubs", "Four of Clubs", "Five of Clubs", "Six of Clubs", "Seven of Clubs", "Eight of Clubs", "Nine of Clubs", "Ten of Clubs", "Jack of Clubs", "Queen of Clubs", "King of Clubs", "Ace of Hearts", "Two of Hearts", "Three of Hearts", "Four of Hearts", "Five of Hearts", "Six of Hearts", "Seven of Hearts", "Eight of Hearts", "Nine of Hearts", "Ten of Hearts", "Jack of Hearts", "Queen of Hearts", "King of Hearts", "Ace of Diamonds", "Two of Diamonds", "Three of Diamonds", "Four of Diamonds", "Five of Diamonds", "Six of Diamonds", "Seven of Diamonds", "Eight of Diamonds", "Nine of Diamonds", "Ten of Diamonds", "Jack of Diamonds", "Queen of Diamonds", "King of Diamonds"], shuffled_cards: ["Queen of Spades", "King of Spades", "Four of Clubs", "Ace of Diamonds", "Ace of Hearts", "Jack of Spades", "Six of Hearts", "Nine of Spades", "Eight of Clubs", "Four of Hearts", "Ace of Clubs", "Ten of Clubs", "Ten of Hearts", "Eight of Diamonds", "Jack of Hearts", "Five of Clubs", "Eight of Hearts", "Nine of Diamonds", "Queen of Clubs", "Three of Hearts", "Six of Diamonds", "Three of Clubs", "Ten of Spades", "Jack of Clubs", "Five of Hearts", "King of Clubs", "King of Diamonds", "Seven of Spades", "Three of Diamonds", "Seven of Diamonds", "Jack of Diamonds", "Two of Clubs", "Five of Diamonds", "Six of Clubs", "Two of Spades", "Ace of Spades", "Seven of Clubs", "Queen of Hearts", "Three of Spades", "Two of Hearts", "Six of Spades", "Five of Spades", "King of Hearts", "Two of Diamonds", "Seven of Hearts", "Eight of Spades", "Queen of Diamonds", "Four of Diamonds", "Ten of Diamonds", "Four of Spades", "Nine of Clubs", "Nine of Hearts"]}
  end

  test "creates a deck", deck do
    assert Cards.create_deck() == deck[:cards]
  end

  test "shuffles a deck", deck do
    :rand.seed(:exsplus, {1374, 347_975, 449_264})
    assert Cards.shuffle(deck[:cards]) == deck[:shuffled_cards]
  end

  test "determines a deck contains a card", deck do
    assert Cards.contains?(deck[:cards], "Ace of Spades") == true
  end

  test "determines a deck does not contain a card", deck do
    assert Cards.contains?(deck[:cards], "Fortytwo of Life") == false
  end
end
