require "bike.rb"

=begin
describe Bike do
    it 'responds to working' do
        expect(subject).to respond_to :working?
    end
end
=end

describe Bike do 
    it { is_expected.to respond_to :working? }

    it 'reports bike as broken' do
        expect(subject.report_bike).to eq true
    end
end