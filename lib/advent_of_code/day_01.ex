defmodule AdventOfCode.Day01 do
  def part1(input) do
    input
    |> Enum.map(fn x -> Enum.fetch!(x, 0) <> Enum.fetch!(x, -1) end)
    |> Enum.map(&String.to_integer/1)
    |> Enum.sum()
  end

  def part2(_args) do
  end

end
