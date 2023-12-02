defmodule AdventOfCode.Day01Test do
  use ExUnit.Case

  import AdventOfCode.Day01

  test "part1" do
    input = [["1", "2"], ["3", "8"], ["1", "2", "3", "4", "5"], ["7"]]
    result = part1(input)

    assert result == 142
  end

  test "part2" do
    input = [["two", "1", "nine"], ["eight", "two", "three"], ["one", "2", "three"], ["two", "one", "3", "four"], ["4", "nine", "eight", "seven", "2"], ["one", "eight", "2", "3", "4"], ["7", "six"]]
    result = part2(input)

    assert result == 281
  end
end
