require 'rails_helper'

RSpec.describe 'ticket_options/index', type: :view do
  before(:each) do
    assign :ticket_options, create_list(:ticket_option, 2, name: 'Mars', ticket: create(:ticket))
  end

  it 'renders a list of ticket_options' do
    render
    assert_select 'tr>td', text: 'Mars', count: 2
  end
end
