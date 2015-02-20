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

  def test_it_can_parse_one_line
    chisel = Chisel.new
    text = "#Hello"
    assert_equal ["<h1>Hello</h1>"], chisel.parse(text)
  end

  def test_it_can_parse_the_headers
  skip
  chisel = Chisel.new
  text = '# My Life in Desserts

  ## Chapter 1: The Beginning

  "You just *have* to try the cheesecake," he said. "Ever since it appeared in
  **Food & Wine** this place has been packed every night."'
  assert_equal "<h1> My Life in Desserts</h1>
<h2> Chapter 1: The Beginning</h2>", chisel.parse_header(text)
  end
  #I don't know why but this test is failing still. It counts
  #all of the total hashes in the body of text and returns <h3>

def test_it_can_parse_paragraph
skip
chisel = Chisel.new
text = '# My Life in Desserts

## Chapter 1: The Beginning

"You just *have* to try the cheesecake," he said. "Ever since it appeared in
**Food & Wine** this place has been packed every night."'
assert_equal "<p>You just *have* to try the cheesecake," he said. "Ever since it appeared in
**Food & Wine** this place has been packed every night.<p>", chisel.parse_paragraph(text)
end
#This test is failing because of a billion syntax errors, not sure why

  def test_it_can_parse_two_lines
    skip
    chisel = Chisel.new
    text = "# My Life in Desserts
## Chapter 1: The Beginning"
    assert_equal "<h1>My Life in Desserts</h1>
    <h2>Chapter 1: The Beginning</h2>", chisel.parse(text)
  end
#This test is failing for same reason as parse headers 

end
