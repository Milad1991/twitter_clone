class StatusesController < ApplicationController
  def index
    @statuses = Status.all #load all the satuses in the instance
  end

  def show
  end

  def new
  end
end
