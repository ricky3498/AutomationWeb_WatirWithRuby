require_relative '../pages/checkbox_page'
require_relative 'spec_helper'

describe 'Checkbox Test' do
  it 'marca el primer checkbox' do
    page = CheckboxPage.new(@browser)
    page.visit
    page.check_first_box
    expect(page.is_checked?).to be true
  end
end
