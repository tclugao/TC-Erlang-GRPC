defmodule Helloworld.Greeter.Server do
  use GRPC.Server, service: Helloworld.Greeter.Service

  @spec say_hello(Helloworld.HelloRequest.t(), GRPC.Server.Stream.t()) ::
          Helloworld.HelloReply.t()
  def say_hello(request, _stream) do
    Helloworld.HelloReply.new(
      message: "Hello #{request.name}"
    )
  end
end

defmodule Helloworld.Endpoint do
  use GRPC.Endpoint

  run Helloworld.Greeter.Server
end
