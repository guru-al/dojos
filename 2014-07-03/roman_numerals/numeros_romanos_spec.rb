require "./roman_conversor"

describe RomanConversor do

	context "simple number" do
		
		it "converts 1 to roman number I" do
			assert_roman 1, "I"
		end

		it "converts 5 to roman number V" do
			assert_roman 5, "V"
		end		

		it "converts 10 to roman number X" do
			assert_roman 10, "X"
		end

		it "converts 50 to roman number L" do
			assert_roman 50, "L"
		end

		it "converts 100 to roman number C" do
			assert_roman 100, "C"
		end

		it "converts 500 to roman number D" do
			assert_roman 500, "D"
		end

		it "converts 1000 to roman number M" do
			assert_roman 1000, "M"
		end
	end
	
	context "duplicated value" do
		it "converts 2 to roman number II" do
			assert_roman 2, "II"
		end
	end

	context "exactly before 5 or 10" do
		it "converts 4 to roman number IV" do
			assert_roman 4, "IV"
		end
	end

	context "after 5 and before 10" do
		it "converts 6 to roman number VI" do
			assert_roman 6, "VI"
		end

		it "convert 7 to roman number VII" do
			assert_roman 7, "VII"
		end

		it "convert 8 to roman number VIII" do
			assert_roman 8, "VIII"
		end

		it "convert 14 to roman number XIV" do
			assert_roman 14, "XIV"
		end

		it "convert 600 to roman number DC" do
			assert_roman 600, "DC"
		end

		it "convert 9 to roman number IX" do
			assert_roman 9, "IX"
		end

	end

	private

	def assert_roman number, expected
			expect(subject.to_roman(number)).to eq(expected)
	end
end