def ask(question)
  while true
    puts question
    reply = gets.chomp.downcase   #.chomp
    if reply == 'yes' || reply == 'no'
      if reply == 'yes'
        return true
      else
        return false
      end
      break
    else
      puts 'Please answer "yes" or "no".'
    end
  end
end

describe 'ask' do
  before do
    #stub is fake implementation of a method
    stub(:puts).with('anything')
    #stub(:puts).with('Please  "yes" or "no".')
    stub(:gets).and_return 'yes'
    allow_any_instance_of(Kernel).to receive(:gets).and_return 'yes'
  end
  it 'returns true when you say yes' do
    expect(ask('anything')).to be true
  end
  it 'returns false when you say no' do
    allow_any_instance_of(Kernel).to receive(:gets).and_return 'no'
    expect(ask('anything')).to be false
  end
end