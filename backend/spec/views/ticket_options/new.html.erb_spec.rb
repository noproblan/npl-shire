require 'rails_helper'

RSpec.describe 'ticket_options/new', type: :view do
  before(:each) do
    assign(:ticket_option, TicketOption.new(
                             name: 'MyString',
                             price: 1,
                             ticket: nil
    ))
  end

  it 'renders new ticket_option form' do
    render

    assert_select 'form[action=?][method=?]', ticket_options_path, 'post' do
      assert_select 'input[name=?]', 'ticket_option[name]'

      assert_select 'input[name=?]', 'ticket_option[price]'

      assert_select 'input[name=?]', 'ticket_option[ticket_id]'
    end
  end
end
