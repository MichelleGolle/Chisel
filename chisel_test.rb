#1.Accept a body of text (in markdown format)
#2.Read every character of the text
#2a.Locate specific elements in that text such as # and a line break
#with an empty line separating the text
#3.Replace those (markdown)elements with the appropriate html element
#4.Output the text with those replacements

require "minitest"
require "minitest/autorun"
require "minitest/pride"
require_relative "chisel"

class TestChisel < Minitest::Test

  def test_it_exists
    assert Chisel.new
  end

  def test_it_splits_the_text_by_line
    chisel = Chisel.new
    text = "This is a test."
    assert_equal ["This is a test."], chisel.split_text(text)
  end

  #def test_it_can_recognize_hash_as_first_charater
  #chisel = Chisel.new
  #assert_equal
  #end



end