require_relative '../pages/dropdown_page'
require_relative 'spec_helper'

describe 'Dropdown Test' do
  it 'selecciona Option 2' do
    page = DropdownPage.new(@browser)
    page.visit
    page.select_option('Option 2')
    expect(page.selected_option).to eq('Option 2')
  end
end
