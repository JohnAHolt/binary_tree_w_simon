defmodule Btree.Walk.ToListTest do
  use ExUnit.Case

  test "example1 to list" do
    assert Btree.Walk.ToList.to_list(Btree.TreeExamples.example1) == [3, 4, 1, 2, 3]
  end

  test "nil tree to list" do
    assert Btree.Walk.ToList.to_list(nil) == []
  end

  


end
