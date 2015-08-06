require ('rspec')
require('./lib/coin_combinations')

describe('Fixnum#combine') do
  it('takes user input and returns the amount of quarters') do
    expect((25).combine).to(eq('1 quarters'))
  end

it('takes user input and returns the amount of quarters and dimes') do
  expect((35).combine).to(eq('1 quarters, 1 dime'))
end



end
