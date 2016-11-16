module PerformancesHelper
  def do_counts(points_array)
      reasons = Hash.new(0)
    points_array.each { |point|
      reasons[point.reason] += 1
    }
    return reasons
  end
end
