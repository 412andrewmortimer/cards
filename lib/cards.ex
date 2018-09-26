defmodule Cards do
  @moduledoc """
  Documentation for Cards.
  """

  @doc """
  Create deck.

  ## Examples

      iex> Cards.create_deck
      ["Ace of Spades", "Two of Spades", "Three of Spades", "Four of Spades", "Five of Spades", "Six of Spades", "Seven of Spades", "Eight of Spades", "Nine of Spades", "Ten of Spades", "Jack of Spades", "Queen of Spades", "King of Spades", "Ace of Clubs", "Two of Clubs", "Three of Clubs", "Four of Clubs", "Five of Clubs", "Six of Clubs", "Seven of Clubs", "Eight of Clubs", "Nine of Clubs", "Ten of Clubs", "Jack of Clubs", "Queen of Clubs", "King of Clubs", "Ace of Hearts", "Two of Hearts", "Three of Hearts", "Four of Hearts", "Five of Hearts", "Six of Hearts", "Seven of Hearts", "Eight of Hearts", "Nine of Hearts", "Ten of Hearts", "Jack of Hearts", "Queen of Hearts", "King of Hearts", "Ace of Diamonds", "Two of Diamonds", "Three of Diamonds", "Four of Diamonds", "Five of Diamonds", "Six of Diamonds", "Seven of Diamonds", "Eight of Diamonds", "Nine of Diamonds", "Ten of Diamonds", "Jack of Diamonds", "Queen of Diamonds", "King of Diamonds"]

  """
  def create_deck do
    values = ["Ace", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Jack", "Queen", "King"]

    suits = ["Spades", "Clubs", "Hearts", "Diamonds"]

    for suit <- suits, value <- values do
      "#{value} of #{suit}"
    end
  end

  # @doc """
  # Shuffle deck.
  #
  # ## Examples
  #
  #     # Although not necessary, let's seed the random algorithm
  #     iex> :rand.seed(:exsplus, {1374, 347_975, 449_264})
  #     iex> Cards.shuffle(["Ace", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Jack", "Queen", "King"])
  #     ["Queen", "King", "Jack", "Nine", "Ten", "Seven", "Two", "Ace",
  #           "Three", "Six", "Five", "Eight", "Four"]
  #
  # """
  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  # @doc """
  # Shuffle deck.
  #
  # ## Examples
  #
  #     # Although not necessary, let's seed the random algorithm
  #     iex> Cards.contains?(["Ace", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Jack", "Queen", "King"], "Two")
  #     true
  #
  # """
  def contains?(deck, card) do
    Enum.member?(deck, card)
  end
end
