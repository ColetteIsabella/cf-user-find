class HomesController < ApplicationController
  def index
    @users = User.joins(:license).where(licenses: {state: "WA"} )
  end
end
