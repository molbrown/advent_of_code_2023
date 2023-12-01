defmodule AdventOfCode.Day01Test do
  use ExUnit.Case

  import AdventOfCode.Day01

  test "part1" do
    input = [["1", "2"], ["3", "8"], ["1", "2", "3", "4", "5"], ["7"]]
    result = part1(input)

    assert result == 142
  end

  @tag :skip
  test "part2" do
    input = nil
    result = part2(input)

    assert result
  end
end
