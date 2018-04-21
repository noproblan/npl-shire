require 'rails_helper'

RSpec.describe 'tickets/new', type: :view do
  before(:each) do
    assign(:ticket, Ticket.new(
                      base_price: 1,
                      status: '',
                      lan: nil,
                      user: nil
    ))
  end

  it 'renders new ticket form' do
    render

    assert_select 'form[action=?][method=?]', tickets_path, 'post' do
      assert_select 'input[name=?]', 'ticket[base_price]'

      assert_select 'input[name=?]', 'ticket[status]'

      assert_select 'input[name=?]', 'ticket[lan_id]'

      assert_select 'input[name=?]', 'ticket[user_id]'
    end
  end
end
