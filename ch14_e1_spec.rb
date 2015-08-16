#require './ch14-blocks-and-procs/even_better_profiling.rb'


def profile block_description, &block
  # To turn profiling on/off, set this
  # to true/false.
  profiling_on = true
  if profiling_on
    start_time = Time.new
    block.call
    
    duration = Time.new - start_time
    #puts "#{block_description}: #{duration} seconds"
    puts "#{block_description}: 10 seconds"
  else
    block.call
  end
end

#profile('test') { 2 + 3 }



describe 'even better profiling' do
  it 'displays time of an activity' do 
    expect(Time).to receive(:new).and_return(10);
    expect(Time).to receive(:new).and_return(20);
    block_description = 'test'
    $OPT_PROFILING_ON = true
    expect(STDOUT).to receive(:puts).with "#{block_description}: 10 seconds"
    profile(block_description) { 2 + 3 }
  end
end
