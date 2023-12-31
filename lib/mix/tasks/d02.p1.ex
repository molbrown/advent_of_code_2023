defmodule Mix.Tasks.D02.P1 do
  use Mix.Task

  import AdventOfCode.Day02

  @shortdoc "Day 02 Part 1"
  def run(args) do
    input = get_input()

    if Enum.member?(args, "-b"),
      do: Benchee.run(%{part_1: fn -> input |> part1() end}),
      else:
        input
        |> part1()
        |> IO.inspect(label: "Part 1 Results")
  end

  defp get_input do
      "../../data/day_02.txt"
    |> Path.expand(__DIR__)
    |> File.stream!()
    |> Stream.map(&String.trim_trailing/1)
    |> Enum.to_list()
    |> Enum.map(&String.split(&1, ": "))
    |> Enum.map(fn [x, y] -> [String.to_integer(String.trim(x, "Game ")), String.split(y, [", ", "; "])] end)
  end
end
