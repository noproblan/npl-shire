require 'rails_helper'

RSpec.describe 'ticket_options/edit', type: :view do
  before(:each) do
    @ticket_option = assign(:ticket_option, create(:ticket_option))
  end

  it 'renders the edit ticket_option form' do
    render

    assert_select 'form[action=?][method=?]', ticket_option_path(@ticket_option), 'post' do
      assert_select 'input[name=?]', 'ticket_option[name]'

      assert_select 'input[name=?]', 'ticket_option[price]'

      assert_select 'input[name=?]', 'ticket_option[ticket_id]'
    end
  end
end
