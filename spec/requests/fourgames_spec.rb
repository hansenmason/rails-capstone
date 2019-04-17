require 'rails_helper'

RSpec.describe "Fourgames", type: :request do
  describe "GET /fourgames" do
    it "works! (now write some real specs)" do
      get fourgames_path
      expect(response).to have_http_status(200)
    end
  end
end
