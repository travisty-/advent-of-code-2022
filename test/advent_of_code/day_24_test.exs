defmodule AdventOfCode.Day24Test do
  use ExUnit.Case

  import AdventOfCode.Day24

  @tag :skip
  test "part1" do
    input = AdventOfCode.Input.get!(24, 2022)
    result = part1(input)

    assert result
  end

  @tag :skip
  test "part2" do
    input = AdventOfCode.Input.get!(24, 2022)
    result = part2(input)

    assert result
  end
end
