require 'spec_helper'

describe Goal do

  it { should ensure_inclusion_of(:status).in_array(Goal::STATUSES) }
  it { should ensure_inclusion_of(:difficulty_level).in_array(Goal::DIFFICULTY_LEVEL_VALUES) }
  it { should validate_presence_of(:user_id) }

end
