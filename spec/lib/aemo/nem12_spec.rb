require 'spec_helper'
require 'json'

describe AEMO::NEM12 do

  let(:json) { JSON.parse(fixture("nmi_checksum.json").read) }

  describe '::RECORD_INDICATORS' do
    it "should be a hash" do
      expect(AEMO::NEM12::RECORD_INDICATORS.class).to eq(Hash)
    end
  end

  describe '#parse_nem12' do
  end

  describe '.parse_nem12_file' do
    it 'should parse a file' do
      Dir.entries(File.join(File.dirname(__FILE__),'..','..','fixtures','NEM12')).reject{|f| %w(. .. .DS_Store).include?(f)}.each do |file|
        nem12 = AEMO::NEM12.parse_nem12_file(fixture(File.join('NEM12',file)))
      end
    end
  end

  describe 'parse_nem12_100' do
  end

  describe 'parse_nem12_200' do
  end

  describe 'parse_nem12_300' do
  end

  describe 'parse_nem12_400' do
  end

  describe 'parse_nem12_500' do
  end

  describe 'parse_nem12_900' do
  end

end
