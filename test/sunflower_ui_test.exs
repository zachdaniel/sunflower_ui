defmodule SunflowerUITest do
  use ExUnit.Case
  doctest SunflowerUI

  test "greets the world" do
    assert SunflowerUI.hello() == :world
  end
end
