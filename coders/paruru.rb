class Paruru < Coder
  def initialize
    @name = 'paruru'
    @salary = 22_000
  end

  def work(remain_difficulty)
    if rand(10) > 3
      forward = rand(100...500)
      puts "#{name}盐你一脸，成功将项目推进#{forward}"
      remain_difficulty - forward
    else
      bugs = rand(1...5)
      fallback = bugs * rand(0...50)
      puts "#{name}笑了一下，却引入了#{bugs}个BUG, 项目难度增加#{fallback}"
      remain_difficulty + fallback
    end
  end

  def pay(company_money)
    puts "#{name}领取了#{salary}元薪水, 然而全部买菠萝包了。"
    company_money - salary
  end

end