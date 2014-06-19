class FizzBuzz

    RANGE = (1..100)


    def divisible_by_3?(number)
     number % 3 == 0
    end

    def divisible_by_5?(number)
        number % 5 == 0
    end

    def divisible_by_3_and_5?(number)
        self.divisible_by_3?(number)  && self.divisible_by_5?(number)
    end


    def print_number(number)
        if self.divisible_by_3?(number) && !self.divisible_by_3_and_5?(number)
          return "Fizz"  
        end

        if self.divisible_by_5?(number) && !self.divisible_by_3_and_5?(number)
           return "Buzz"
        end

        if self.divisible_by_3_and_5?(number)
            return "FizzBuzz"
        end

        return number
    end

end