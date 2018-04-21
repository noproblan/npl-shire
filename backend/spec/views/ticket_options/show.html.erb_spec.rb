require 'rails_helper'

RSpec.describe 'ticket_options/show', type: :view do
  before(:each) do
    @ticket_option = assign(:ticket_option, create(:ticket_option))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
  end
end
