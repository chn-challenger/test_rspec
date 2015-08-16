def romnum_1_to_9(num, one, five, ten, modula)

  m = ((num % (modula*10)) / modula ).to_i
  num_of_five = (m/5).to_i
  num_of_one = m%5 
  
  if num_of_five == 1 
    if num_of_one == 4
      rom_num = one + ten 
    else
      rom_num = five + one*num_of_one
    end   
  else #num_of_five == 0
    if num_of_one == 4
      rom_num = one + five
    else
      rom_num = one*num_of_one
    end
  end

  return rom_num
end

#puts romnum_1_to_9(99, 'X', 'Y', 'Z', 10)

def roman_numeral num
  if num > 999999
    return "number too big for roman numerals"
  end

  rom_digits = ['I','V','X','L','C','D','M','P','Q','R','S','T','A','B','E','F']
  num_of_digits = (num).to_s.length
  roman_num = ''

  for i in 0...num_of_digits
    roman_num = romnum_1_to_9(num,rom_digits[i*2],rom_digits[i*2+1],rom_digits[i*2+2],10**i) + roman_num
  end
  
  return roman_num

end


describe 'roman numerals' do
  numerals = ['I','II','III','IV','V','VI','VII','VIII','IX','X',
              'XI','XII','XIII','XIV','XV','XVI','XVII','XVIII','XIX','XX']
  numerals.each.with_index do |numeral, i|
    it "translates #{i+1} to #{numeral}" do
      allow(STDOUT).to receive(:puts)
      expect(roman_numeral(i+1)).to eq numeral
    end
  end
  l_numerals = ['L','LI','LII','LIII','LIV','LV','LVI','LVII','LVIII','LIX',
              'LX','LXI','LXII','LXIII','LXIV','LXV','LXVI','LXVII','LXVIII','LXIX']
  l_numerals.each.with_index do |numeral, i|
    it "translates #{i+50} to #{numeral}" do
      allow(STDOUT).to receive(:puts)
      expect(roman_numeral(i+50)).to eq numeral
    end
  end
end