require 'spec_helper'

describe Enrollment do
  it { should belong_to :student }
  it { should belong_to :course }

  it { should validate_presence_of :student }
  it { should validate_presence_of :course }
end
