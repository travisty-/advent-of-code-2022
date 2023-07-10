defmodule AdventOfCode.Day01 do
  def part1(args) do
    args
    |> parse_inventory()
    |> Enum.max()
  end

  def part2(args) do
    args
    |> parse_inventory()
    |> Enum.sort(:desc)
    |> Enum.take(3)
    |> Enum.sum()
  end

  defp parse_inventory(items) do
    items
    |> String.split("\n")
    |> Stream.chunk_by(&(&1 != ""))
    |> Stream.reject(&(&1 == [""]))
    |> Stream.map(&to_integers/1)
    |> Stream.map(&Enum.sum/1)
  end

  defp to_integers(enum), do: enum |> Enum.map(&String.to_integer/1)
end
