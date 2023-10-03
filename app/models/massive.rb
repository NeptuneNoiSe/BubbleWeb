class Massive < ApplicationRecord
  def self.params(nod, min, max, ndp)
    a = nod.to_i
    b = min.to_f
    c = max.to_f
    d = ndp.to_i
    random_numbers = Array.new(a) { rand(b...c) }
    @unsorted = random_numbers.map{|x| x.round(d)}
  end
end
