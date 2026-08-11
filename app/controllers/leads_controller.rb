# frozen_string_literal: true

# Public lead capture from the Beacon landing page signup. No authentication:
# the landing page is the front door, and a visitor's email must be storable
# without an account.
class LeadsController < ApplicationController
  def create
    @lead = Lead.new(lead_params)
    if @lead.save
      redirect_to root_path(anchor: "signup"), notice: "You're on the list — we'll be in touch soon."
    else
      render "home/show", status: :unprocessable_entity
    end
  end

  private

  def lead_params
    params.require(:lead).permit(:name, :email)
  end
end
