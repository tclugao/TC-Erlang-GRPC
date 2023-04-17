defmodule IntegrationsGrpcTest do
  use ExUnit.Case
  doctest IntegrationsGrpc

  test "greets the world" do
    assert IntegrationsGrpc.hello() == :world
  end
end
