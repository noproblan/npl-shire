require 'rails_helper'

RSpec.describe 'tickets/edit', type: :view do
  before(:each) do
    @ticket = assign(:ticket, create(:ticket))
  end

  it 'renders the edit ticket form' do
    render

    assert_select 'form[action=?][method=?]', ticket_path(@ticket), 'post' do
      assert_select 'input[name=?]', 'ticket[base_price]'

      assert_select 'input[name=?]', 'ticket[status]'

      assert_select 'input[name=?]', 'ticket[lan_id]'

      assert_select 'input[name=?]', 'ticket[user_id]'
    end
  end
end
