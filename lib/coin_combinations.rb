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
      end
    end

    until change.<(10)
      if change.>=(10)
        change=change.-(10)
        dimes=dimes.+(1)
      end
    end


    until change.<(5)
      if change.>=(5)
        change=change.-(5)
        nickels=nickels.+(1)
      end
    end




    output.concat(quarters.to_s()).concat(' quarters, ').concat(dimes.to_s()).concat(' dimes, ').concat(nickels.to_s()).concat(' nickels, ').concat(pennies.to_s()).concat(' pennies')
  end
end
