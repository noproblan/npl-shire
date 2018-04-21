require 'rails_helper'

RSpec.describe 'lans/index', type: :view do
  before(:each) do
    assign(:lans, create_list(:lan, 2, description: 'SomeText'))
  end

  it 'renders a list of lans' do
    render
    assert_select 'tr>td', text: 'SomeText'.to_s, count: 2
  end
end
