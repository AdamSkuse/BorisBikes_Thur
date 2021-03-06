require 'bike.rb'

describe Bike do

  it { is_expected.to respond_to :report_broken }

  it { is_expected.to respond_to :broken? }

  it { is_expected.to respond_to(:broken?).with(false) }

  it 'reporting that a bike is broken returns true' do
  	expect(subject.report_broken).to eq true
  end

end

