require 'rspec'
require './progress_of_work.rb'

RSpec.describe "greeting" do
  it 'should output the line' do
    expect(greeting("Иван", "Иванов", 19)).to eq "Привет, Иван Иванов. Самое время заняться делом."
  end
end

RSpec.describe "foobar" do
  it 'choice a or b or sum' do
    expect(foobar(20, 45)).to eq "Второе число: 45"
  end
end
