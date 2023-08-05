defmodule AdventOfCode.Day19Test do
  use ExUnit.Case

  import AdventOfCode.Day19

  @tag :skip
  test "part1" do
    input = AdventOfCode.Input.get!(19, 2022)
    result = part1(input)

    assert result
  end

  @tag :skip
  test "part2" do
    input = AdventOfCode.Input.get!(19, 2022)
    result = part2(input)

    assert result
  end
end
