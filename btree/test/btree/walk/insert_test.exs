defmodule Btree.Walk.InsertTest do
  use ExUnit.Case
  alias Btree.Tree, as: Tree

  test "insert into sorted example" do
    assert Btree.Walk.Insert.btree_insert(Btree.TreeExamples.sorted_example, 1)
    == %Tree{value: 5,
    ltree: %Tree{value: 3,
         ltree: %Tree{value: 2,
            ltree: %Tree{value: 1}},
         rtree: %Tree{value: 4}},
     rtree: %Tree{value: 7,
         ltree: %Tree{value: 6},
         rtree: %Tree{value: 8}}}
  end

  test "insert into sorted example2" do
    assert Btree.Walk.Insert.btree_insert(Btree.TreeExamples.sorted_example2, 15)
    == %Tree{value: 5,
    ltree: %Tree{value: 3,
         ltree: %Tree{value: 2},
         rtree: %Tree{value: 4}},
     rtree: %Tree{value: 10,
         ltree: %Tree{value: 8},
         rtree: %Tree{value: 12,
            rtree: %Tree{value: 15}}}}
  end


end
