class DropdownPage
  def initialize(browser)
    @browser = browser
  end

  def visit
    @browser.goto 'https://the-internet.herokuapp.com/dropdown'
  end

  def select_option(text)
    @browser.select_list(id: 'dropdown').select(text)
  end

  def selected_option
    @browser.select_list(id: 'dropdown').selected_options.first.text
  end
end
