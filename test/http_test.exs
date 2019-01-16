defmodule HttpTest do
  use ExUnit.Case
  doctest Http

  test "greets the world" do
    assert Http.hello() == :world
  end
end
