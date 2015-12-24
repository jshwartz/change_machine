require ('rspec')
require ('change')
require ('pry')

describe('Fixnum#change') do
  it("outputs change in string") do
    expect((92).change()).to(eq("Your change from 92 cents is 3 quarters 1 dime 1 nickel and 2 pennies."))
  end
end
