class Massive < ApplicationRecord
  def self.params(nod, min, max, ndp)
    a = nod.to_i
    b = min.to_f
    c = max.to_f
    d = ndp.to_i
    random_numbers = Array.new(a) { rand(b...c) }
    @unsorted = random_numbers.map{|x| x.round(d)}
  end

  def self.var
    @var = @unsorted
  end

  def self.avg(result)
    avg = result.inject(0.0) { |sum, el| sum + el } / result.size
    @avg = avg.round(3)
  end
end
