
Before do
  @calculator = Calculator.new
end

Given /^I have entered (\d+) into the calculator$/ do |entered|
  @calculator.enter(entered.to_i)
end

When /^I press add$/ do
  @calculator.press(:add)
end

Then /^the result should be (\d+) on the screen$/ do |result|
  @calculator.result.should == result.to_i
end
