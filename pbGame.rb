#!/usr/bin/ruby
class pbGame

  def initialize(g_id, g_nums, type="standard")
    @select_num=g_nums
    @type=type

  end

  def winner?(win_num)
    intersect = win_num & s_num
    if intersect.count=7
      True
    end
  end

  def payout

  end

  def to_s

  end
end
