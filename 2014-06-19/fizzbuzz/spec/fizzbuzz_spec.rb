require File.expand_path('../../fizzbuzz',__FILE__)
describe "FizzBuzz" do

    before(:all) do
        @fb = FizzBuzz.new
    end

    context "on Print Fizz" do
        it "should print Fizz when the number is divisible by 3" do

            result = @fb.divisible_by_3? 3
            expect(result).to be true

        end

        it "should not print Fizz when the number is not divisible by 3" do

            result = @fb.divisible_by_3? 4

            expect(result).to be false
        end
    end

    

    

    it "should print Buzz when the number is divisible by 5" do

        result = @fb.divisible_by_5? 5

        expect(result).to be true
    end

    it "should not print Buzz when the number is not divisible by 5" do

        result = @fb.divisible_by_5? 4

        expect(result).to be false

    end

    it "should print FizzBuzz when the number is divisible by 3 and 5" do
        result = @fb.divisible_by_3_and_5? 15
        expect(result).to be true
    end

    it "should not print Buzz when the number is not divisible by 3 and 5" do
        result = @fb.divisible_by_3_and_5? 10
        expect(result).to be false
    end



    context "Print Lines" do
        it "should print Fizz" do

            result = @fb.print_number(3)

            expect(result).to eql "Fizz"
        end

        it "should print Buzz" do
            result = @fb.print_number(10)

            expect(result).to eql "Buzz"
        end
        
        it "should print FizzBuzz" do 
            result = @fb.print_number(15)

            expect(result).to eql "FizzBuzz"

        end    


    end

end