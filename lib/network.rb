require 'pry'
class Network
  attr_reader :name, :shows
  def initialize(name)
    @name = name
    @shows = []
    @hash_sala = {}
    @hash_salary = {}
  end

  def add_show(show)
    @shows << show
  end

  def highest_paid_actor
    @shows.each do |show|
      show.characters.each do |char|
        @hash_sala[char.salary] = char.actor
      end
    end
    @hash_sala.max_by do |key, val|
      key
    end[1]
  end

  def payroll
    @shows.each do |show|
      show.characters.each do |char|
        @hash_salary[char.actor] = char.salary
      end
    end
    @hash_salary
  end
end
