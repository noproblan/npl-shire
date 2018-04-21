require 'rails_helper'

RSpec.describe 'tickets/show', type: :view do
  before(:each) do
    @ticket = assign(:ticket, create(:ticket, base_price: 4200))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/4200/)
  end
end
