require 'arabic_to_roman'

describe 'Arabic numbers to roman numerals' do
	
	context 'Simple roman numerals' do

		it 'should return I given 1' do
			expect(1.to_roman).to eq 'I'
		end

		it 'should return V given 5' do
			expect(5.to_roman).to eq 'V'
		end

		it 'should return X given 10' do
			expect(10.to_roman).to eq 'X'
		end

	end

	context 'Complex roman numerals' do
		it 'should return II given 2' do
			expect(2.to_roman).to eq 'II'
		end
		it 'should return III given 3' do
			expect(3.to_roman).to eq 'III'
		end
		it 'should return IV given 4' do
			expect(4.to_roman).to eq 'IV'
		end
		it 'should return VI given 6' do
			expect(6.to_roman).to eq 'VI'
		end
		it 'should return VII given 7' do
			expect(7.to_roman).to eq 'VII'
		end
		it 'should return VIII given 8' do
			expect(8.to_roman).to eq 'VIII'
		end
		it 'should return XXXIX given 39' do
			expect(39.to_roman).to eq 'XXXIX'
		end
	end

end