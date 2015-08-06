require ('rspec')
require('./lib/coin_combinations')

describe('Fixnum#combine') do
  it('takes user input and returns the amount of quarters') do
    expect((25).combine).to(eq('1 quarters, 0 dimes, 0 nickels, 0 pennies'))
  end

  it('takes user input and returns the amount of quarters and dimes') do
    expect((35).combine).to(eq('1 quarters, 1 dimes, 0 nickels, 0 pennies'))
  end

  it('takes user input and returns the amount of quarters, dimes and nickels') do
    expect((40).combine).to(eq('1 quarters, 1 dimes, 1 nickels, 0 pennies'))
  end

  it('takes user input and returns the amount of quarters, dimes, nickels and pennies') do
    expect((41).combine).to(eq('1 quarters, 1 dimes, 1 nickels, 1 pennies'))
  end

end
