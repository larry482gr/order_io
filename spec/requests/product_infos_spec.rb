require 'rails_helper'

RSpec.describe "ProductInfos", type: :request do
  describe "GET /product_infos" do
    it "works! (now write some real specs)" do
      get product_infos_path
      expect(response).to have_http_status(200)
    end
  end
end
