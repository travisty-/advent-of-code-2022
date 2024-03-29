defmodule AdventOfCode.Day10Test do
  use ExUnit.Case

  import AdventOfCode.Day10

  @tag :skip
  test "part1" do
    input = AdventOfCode.Input.get!(10, 2022)
    result = part1(input)

    assert result
  end

  @tag :skip
  test "part2" do
    input = AdventOfCode.Input.get!(10, 2022)
    result = part2(input)

    assert result
  end
end
