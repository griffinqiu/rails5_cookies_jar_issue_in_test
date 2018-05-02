class SessionsController < ApplicationController
  def new
    head :ok
  end

  def create
    head :created
  end
end
