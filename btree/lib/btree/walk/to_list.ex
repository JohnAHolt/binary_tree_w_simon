defmodule Btree.Walk.ToList do

  def to_list(nil) do
    []
  end

  def to_list(btree) do
    [btree.value] ++ to_list(btree.ltree) ++ to_list(btree.rtree)
  end

end
