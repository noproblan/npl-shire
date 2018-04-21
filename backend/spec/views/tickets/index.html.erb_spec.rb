require 'rails_helper'

RSpec.describe 'tickets/index', type: :view do
  before(:each) do
    assign :tickets, create_list(:ticket, 2, base_price: 5000, lan: create(:lan), user: create(:user))
  end

  it 'renders a list of tickets' do
    render
    assert_select 'tr>td', text: 5000.to_s, count: 2
  end
end
