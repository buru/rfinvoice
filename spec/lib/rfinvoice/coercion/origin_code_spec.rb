require 'spec_helper'

RSpec.describe ::RFinvoice::Coercion::OriginCodeCoercion do
  subject { described_class.build(::RFinvoice::Type::OriginCodeType, name: :test) }

  it 'should be strict' do
    expect(subject.strict?).to be_truthy
  end

  it 'should raise error on broken value what is string' do
    expect { subject.coerce('s') }.to raise_error
  end

  it 'should raise error on broken value what is not string' do
    expect { subject.coerce({}) }.to raise_error
  end

  %w(Original Copy Cancel).each do |key|
    it "should allow #{key}" do
      expect(subject.coerce(key)).to eq(key)
    end
  end
end