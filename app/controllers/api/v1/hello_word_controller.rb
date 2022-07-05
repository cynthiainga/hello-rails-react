class Api::V1::HelloWorldController < ApplicationController
  @hello = HelloWorld.find(rand(1..5))

  render json:@hello
end
