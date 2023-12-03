defmodule AdventOfCode.Day02 do
  def part1(input) do
    input
    |> Enum.map(fn [x, y] -> [x, max_blocks("red", y), max_blocks("green", y), max_blocks("blue", y)] end)
    |> Enum.filter(fn [_x, r, g, b] -> possible?(12, r) && possible?(13, g) && possible?(14, b) end)
    |> Enum.map(&Enum.at(&1, 0))
    |> Enum.sum
  end

  def part2(input) do
    input
    |> Enum.map(fn [x, y] -> [x, max_blocks("red", y), max_blocks("green", y), max_blocks("blue", y)] end)
    |> Enum.map(fn [_x, r, g, b] -> r*g*b end)
    |> Enum.sum
  end

  defp max_blocks(color, y) do
    Enum.filter(y, fn b -> String.contains?(b, color) end)
    |> Enum.map(&String.trim(&1, " " <> color))
    |> Enum.map(&String.to_integer/1)
    |> Enum.max
  end

  defp possible?(max, x) do
    max >= x
  end
end
