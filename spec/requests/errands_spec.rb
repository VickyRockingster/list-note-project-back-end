require 'rails_helper'

RSpec.describe "Errands", type: :request do
  describe "GET /errands" do
    it "works! (now write some real specs)" do
      get errands_path
      expect(response).to have_http_status(200)
    end
  end
end
