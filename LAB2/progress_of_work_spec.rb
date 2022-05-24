require 'rspec'
require './progress_of_work.rb'

RSpec.describe "greeting" do
  it "should output the line" do
    expect(greeting("Иван", "Иванов", 7)).to eq "Привет, Иван Иванов. Тебе меньше 18 лет, но начать учиться программировать никогда не рано."
  end
end

RSpec.describe "foobar" do
  it "choice a or b or sum" do
    expect(foobar(20, 45)).to eq "45"
  end
end
