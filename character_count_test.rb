require 'minitest/autorun'
require 'minitest/pride'
require_relative 'character_count'

# The program needs to take in a string of characters.
# Break the string up into indidivudal characters.
# and then iterate through the array of characters.
# It then needs to keep a tally of each character as it passes in a counter.
# Then the program needs to order the individual characters in decending order based on occurrence.
# It needs to display each character on its own line.
# It needs to be displayed as follows => character: number_of_occurences
# examples to compare with: aaabbc => a: 3, b: 2, c: 1
# example 2: I really want to work for Wingspan
# we need to check for both upper case and lower case

class CharacterCountTest < Minitest::Test

  def test_it_returns_nil_if_string_is_empty
    skip
    cc = CharacterCount.new("")

    refute cc
  end

  def test_it_can_take_a_string
    cc = CharacterCount.new("aaabbc")

    assert_equal "aaabbc", cc.split_me
  end

  def test_it_breaks_up_string_into_characters
    cc = CharacterCount.new("aaabbc")

    assert_equal ["a", "a", "a", "b", "b", "c"], cc.splitted
  end

  def test_it_corrects_for_capitals
    skip
    cc = CharacterCount.new("AaabBBCCcc")

    assert_equal ["A", "a", "a", "b", "B", "B", "C", "C", "c", "c"], cc.splitted
  end

  # Use group_by
  def test_it_keeps_track_of_the_number_of_each_character_as_it_iterates_through
    skip
    cc = CharacterCount.new("aaabbc")

    assert_equal "{a=>[3], b=>[2], c=>[1]", cc.splitted.grouper
  end

  # Use sort_by
  def test_it_sorts_the_characters_in_descending_order
    skip
    cc = CharacterCount.new("abbcccc")

    grouped = cc.splitted.grouper

    assert_equal "{c=>[4], b=>[2], a=>[1]", grouped.sort_me
  end

  def test_results_are_displayed_properly
    skip
    cc = CharacterCount.new("abbcccc")

    grouped = cc.splitted.grouper
    output = grouped.sort_me

    assert_equal "c: 4", output.first
  end
end
