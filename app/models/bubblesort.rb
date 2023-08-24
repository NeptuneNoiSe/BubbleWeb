class Bubblesort < ApplicationRecord
  include BsortModule
  def self.to_array(input)
    input.split(/ /).map{ |value| value.to_f }
  end
  def self.res1(sss)
    @ares = BsortModule.bubble_sort(sss)
    @res = @ares.map { |x| x.to_s.gsub(/(\.)0+$/, '') }.to_s.tr('"', '').tr('[', '').tr(']', '')
  end
end

