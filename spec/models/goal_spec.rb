require 'spec_helper'

describe Goal do

  it { should ensure_inclusion_of(:difficulty_level).in_array(Goal::DIFFICULTY_LEVEL_VALUES) }
end
