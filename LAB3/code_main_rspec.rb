require 'rspec'
require './code_main.rb'

RSpec.describe "end_CS" do
  it 'should analyze the end of the word' do
    expect(end_CS("wordCS")).to eq 32
  end
  it 'should analyze the end of the word (reverse)' do
    expect(end_CS("Котофей")).to eq "йефотоК"
  end
end

RSpec.describe "pokemon" do
  it 'pokemon' do
    expect(pokemon()).to eq []
  end
end
