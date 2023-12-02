defmodule AdventOfCode.Day01 do
  def part1(input) do
    input
    |> Enum.map(fn x -> Enum.fetch!(x, 0) <> Enum.fetch!(x, -1) end)
    |> Enum.map(&String.to_integer/1)
    |> Enum.sum()
  end

  def part2(input) do
    input
    |> Enum.map(&Enum.map(&1, fn x -> replace_word(x) end))
    |> part1()
  end

  defp replace_word(x) do
    case x do
      "one" -> "1"
      "two" -> "2"
      "three" -> "3"
      "four" -> "4"
      "five" -> "5"
      "six" -> "6"
      "seven" -> "7"
      "eight" -> "8"
      "nine" -> "9"
      x -> x
    end
  end

end
