defmodule AdventOfCode.Day02 do
  def part1(args) do
    total_score(args, %{
      ["A", "X"] => 1 + 3,
      ["A", "Y"] => 2 + 6,
      ["A", "Z"] => 3 + 0,
      ["B", "X"] => 1 + 0,
      ["B", "Y"] => 2 + 3,
      ["B", "Z"] => 3 + 6,
      ["C", "X"] => 1 + 6,
      ["C", "Y"] => 2 + 0,
      ["C", "Z"] => 3 + 3
    })
  end

  def part2(_args) do
  end

  defp total_score(rounds, strategy) do
    rounds
    |> String.split("\n", trim: true)
    |> Stream.map(&String.split/1)
    |> Stream.map(&Map.get(strategy, &1))
    |> Enum.sum()
  end
end
