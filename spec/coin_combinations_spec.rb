require ('rspec')
require('./lib/coin_combinations')

describe('Fixnum#combine') do
  it('takes user input and returns pennies for change') do
    expect((10).combine).to(eq(10))
  end

  it('takes user input and returns nickels for change') do
    expect((10).combine).to(eq(2))
  end

end
