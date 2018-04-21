require 'rails_helper'

RSpec.describe 'lans/new', type: :view do
  before(:each) do
    assign(:lan, Lan.new(
                   name: 'MyString',
                   planned_seats: 1,
                   description: 'MyText'
    ))
  end

  it 'renders new lan form' do
    render

    assert_select 'form[action=?][method=?]', lans_path, 'post' do
      assert_select 'input[name=?]', 'lan[name]'

      assert_select 'input[name=?]', 'lan[planned_seats]'

      assert_select 'textarea[name=?]', 'lan[description]'
    end
  end
end
