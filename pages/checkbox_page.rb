class CheckboxPage
  def initialize(browser)
    @browser = browser
  end

  def visit
    @browser.goto 'https://the-internet.herokuapp.com/checkboxes'
  end

  def check_first_box
    @browser.checkboxes[0].set
  end

  def is_checked?
    @browser.checkboxes[0].set?
  end
end
