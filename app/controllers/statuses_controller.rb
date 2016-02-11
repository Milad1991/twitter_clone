class StatusesController < ApplicationController
  def index
    @page = (params[:page] || 1).to_i                # hash of parameters
    offset = (@page - 1) * 25
    @statuses = Status.
                order(created_at: :desc).
                limit(25).
                offset(offset).
                all                       # load all the satuses in the instance
  end

  def show
  end

  def new
  end
end
