require 'spec_helper'
require 'diff_matcher/rspec'

describe :be_matching do
  it "should call DiffMatcher::Difference" do
    pending 'how are custom matchers tested now?'
    DiffMatcher::Difference.should_receive(:new).with(
      :expected, :actual, { :color_enabled => RSpec::configuration.color_enabled?, :quiet => true }.merge({ :foo => 'bar' })
    ).and_return(double(:matching? => true))

    :actual.should be_matching(:expected).with_options :foo => 'bar'
  end
end
