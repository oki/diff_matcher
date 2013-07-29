require 'spec_helper'
require 'diff_matcher/rspec'

describe :be_matching do
  it "should call DiffMatcher::Difference" do
    DiffMatcher::Difference.should_receive(:new).with(
      :expected, :actual, {color_enabled: true, quiet: true}
    ).and_return(double(:matching? => true))

    :actual.should be_matching :expected
  end
end
