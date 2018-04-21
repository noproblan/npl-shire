require 'rails_helper'

RSpec.describe 'TicketOptions', type: :request do
  describe 'GET /ticket_options' do
    it 'works! (now write some real specs)' do
      get ticket_options_path
      expect(response).to have_http_status(200)
    end
  end
end
