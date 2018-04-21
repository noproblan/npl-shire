require 'rails_helper'

RSpec.describe 'Lans', type: :request do
  describe 'GET /lans' do
    it 'works! (now write some real specs)' do
      get lans_path
      expect(response).to have_http_status(200)
    end
  end
end
