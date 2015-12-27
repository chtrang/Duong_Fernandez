require 'rails_helper'

RSpec.describe "Readers", type: :request do
  describe "GET /readers" do
    it "works! (now write some real specs)" do
      get readers_path
      expect(response).to have_http_status(200)
    end
  end
end
