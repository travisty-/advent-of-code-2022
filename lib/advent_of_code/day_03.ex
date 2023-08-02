defmodule AdventOfCode.Day03 do
  def part1(args) do
    args
    |> String.split("\n", trim: true)
    |> Stream.map(&String.to_charlist/1)
    |> Stream.map(&split_compartments/1)
    |> Stream.map(&find_intersection/1)
    |> Stream.map(&prioritize/1)
    |> Enum.sum()
  end

  def part2(_args) do
  end

  defp split_compartments(items), do: Stream.chunk_every(items, div(length(items), 2))

  defp find_intersection(compartments) do
    compartments
    |> Enum.map(&MapSet.new/1)
    |> Enum.reduce(&MapSet.intersection/2)
    |> Enum.at(0)
  end

  defp prioritize(i) when i in ?a..?z, do: i - ?a + 1
  defp prioritize(i) when i in ?A..?Z, do: i - ?A + 27
end
