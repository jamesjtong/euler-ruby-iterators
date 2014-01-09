require 'pry'

my_num = 0
my_num_count = 0
triang_num = 1
num_to_add = 2
until my_num_count >= 1000
  binding.pry if my_num_count >= 500

  personal_count = 0
  triang_num += num_to_add
  if triang_num % 12 == 0
    (1..triang_num).each do |num|
      if triang_num % num == 0
        personal_count += 1
      end
    end
    if personal_count > my_num_count
      my_num = triang_num
      my_num_count = personal_count
    end
  end
  num_to_add += 1
end


return my_num

class FindTriangNum
  @my_num = 0
  @my_num_count = 0
  @triang_num = 1
  @num_to_add = 2

  def initialize(min)
    @min = min
  end

  def self.find_under(min)
    until @my_num_count == min
      personal_count = 0
      @triang_num += @num_to_add
      only_check_if_divis_by_12(personal_count)
    end

  end

  def only_check_if_divis_by_12(personal_count)
    if @triang_num % 12 == 0
      (1..@triang_num).each do |num|
        if @triang_num % num == 0
          personal_count += 1
        end
      end
    end
    if personal_count > @my_num_count
      @my_num = @triang_num
      @my_num_count = personal_count
    end
    @num_to_add += 1   
  end
end
