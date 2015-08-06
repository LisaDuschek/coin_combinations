require('pry')

class Fixnum
  define_method(:combine) do
    change = self
    pennies = 0
    nickels = 0
    dimes = 0
    quarters = 0
    output = ''

    until change.<(25)
      if change.>=(25)
        change = change.-(25)
        quarters = quarters.+(1)
        output.concat(quarters.to_s()).concat(' quarters')
      end
    end
    output
  end
end
