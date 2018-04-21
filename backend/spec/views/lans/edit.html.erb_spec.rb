require 'rails_helper'

RSpec.describe 'lans/edit', type: :view do
  before(:each) do
    @lan = assign(:lan, create(:lan, name: 'npl123', planned_seats: 50, description: 'MyText'))
  end

  it 'renders the edit lan form' do
    render

    assert_select 'form[action=?][method=?]', lan_path(@lan), 'post' do
      assert_select 'input[name=?]', 'lan[name]'

      assert_select 'input[name=?]', 'lan[planned_seats]'

      assert_select 'textarea[name=?]', 'lan[description]'
    end
  end
end
