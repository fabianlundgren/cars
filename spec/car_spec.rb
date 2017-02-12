require './lib/car.rb'
require 'spec_helper'

describe Car do

  let(:driver) { double('driver', car: true)}

  it 'driver should have a car' do
    expect(subject.car).to eq true
  end

  it 'should have a color on initialize' do
    expect(subject.color).to eq 'blue'
end

  it 'should be possible to repaint the car' do
    subject.color = 'black'
    expect(subject.color).to eq 'black'
  end
end
