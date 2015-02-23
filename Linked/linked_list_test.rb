gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'iterative_linked_list'

class IterativeLinkedListTest < Minitest::Test
attr_reader :list

  def setup
    list = IterativeLinkedList.new
  end


  def test_it_starts_with_zero_elements
    assert_equal 0, list.to_a.count
  end

  def test_a_node_links_to_its_next_element
    skip
    list.push("hello")
    list.push("world")
    assert_equal "world", list.last_node.node_name
    assert_equal "world", list.head_node.next_node.node_name
  end

  def test_nodes_have_data
    node = Node.new("pizza")
    assert_equal "pizza", node.node_name
  end

  def test_nodes_have_next_node
    n1 = Node.new("pizza")
    n2 = Node.new("cats")
    n1.next_node = n2
    assert_equal "cats", n1.next_node.node_name
  end


  def test_list_has_head_node
    list = IterativeLinkedList.new
    list.push("dog")
    assert_equal "dog", list.head.node_name
  end

  def test_next_node_for_the_last_node_is_nil
    skip
    list = IterativeLinkedList.new
    list.push("world")
    assert_equal nil, list.last_node.next_node
  end

  def test_find_if_an_element_is_included_in_the_list
    skip
    list = IterativeLinkedList.new
    list.push("hello")
    list.push("world")
    assert_equal true, list.include?("hello")
    assert_equal false, list.include?("bogus")
  end

  def test_find_a_given_node
    skip
    list = IterativeLinkedList.new
    list.push("hello")
    list.push("world")
    list.push("today")

    assert_equal "world", list.find("world").data
    assert_equal "today", list.find("world").next_node.data
  end

  def test_inserts_node_at_arbitrary_position
    skip
    list.push("hello")
    list.push("world")
    list.push("today")

    list.insert(1, "pizza")

    assert_equal 1, list.index("pizza")
    assert_equal ["hello", "pizza", "world", "today"], list.to_a
  end

  def test_inserted_node_is_next_node_for_previous_node
    skip
    list.push("hello")
    list.push("world")
    list.push("today")

    list.insert(1, "pizza")

    assert_equal "world", list.find("pizza").next_node.data
    assert_equal "pizza", list.find("hello").next_node.data
  end

  def test_it_can_count_total_elements
    
    list = IterativeLinkedList.new
    list.push("hello")
    list.push("world")
    list.push("today")
    assert_equal 3, list.count
  end

end
