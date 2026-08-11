# frozen_string_literal: true

# Public marketing root for Beacon.
class HomeController < ApplicationController
  def show
    @lead = Lead.new
  end
end
