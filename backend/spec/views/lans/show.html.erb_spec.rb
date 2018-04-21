require 'rails_helper'

RSpec.describe 'lans/show', type: :view do
  before(:each) do
    @lan = assign(:lan, create(:lan, description: 'MyText'))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/MyText/)
  end
end
