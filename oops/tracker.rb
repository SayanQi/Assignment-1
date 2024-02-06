require 'date'  # added 'date' module

# created a class Tracker
class Tracker
  # attr_accessor used for task arr
  attr_accessor :task_arr

  # constructoruser_input
  def initialize
    # task_arr = [
    #   { id: 1, name: "task1", time_logs: [[DateTime.parse("2023-01-01 9:30:00"), DateTime.parse("2023-01-01 10:30:00")],
    #                                       [DateTime.parse("2023-01-01 12:00:00"), DateTime.parse("2023-01-01 13:00:00")]] },
    #   { id: 2, name: "task2", time_logs: [[DateTime.parse("2023-01-01 10:30:00"), DateTime.parse("2023-01-01 11:30:00")],
    #                                       [DateTime.parse("2023-01-01 13:00:00"), DateTime.parse("2023-01-01 14:30:00")]] },
    #   { id: 3, name: "task3", time_logs: [[DateTime.parse("2023-01-01 11:30:00"), DateTime.parse("2023-01-01 12:00:00")],
    #                                       [DateTime.parse("2023-01-01 14:30:00"), DateTime.parse("2023-01-01 15:30:00")]] },
    #   { id: 4, name: "task4", time_logs: [[DateTime.parse("2023-01-01 15:30:00"), DateTime.parse("2023-01-01 16:30:00")]] },
    #   { id: 5, name: "task5", time_logs: [[DateTime.parse("2023-01-01 16:30:00"), DateTime.parse("2023-01-01 17:30:00")]] },
    #   { id: 6, name: "task6", time_logs: [[DateTime.parse("2023-01-01 17:30:00"), DateTime.parse("2023-01-01 18:30:00")]] },
    # ]
    @task_arr = []  # instance variable initialized with empty array
  end

  # defined a method to take user input
  def user_input
    time_logs = []
    # started a loop to get input
    loop do
      puts "Enter task details, or type 'exit' to finish:"
      task_input = gets.chomp.downcase
      # break the loop if gets 'exit'
      break if task_input == 'exit'

      # take input of task name
      puts "Enter task name"
      task_name = gets.chomp
      # Exception handled if wrong format
      # raise "Invalid input format. Please use a name" if task_name.to_i == 0

      # started a nested loop to get time log array input
      loop do
        puts "Press 'Enter' to input time details for #{task_name}, or type 'exit' to finish time input:"
        time_input = gets.chomp.downcase
        # break if gets 'exit'
        break if time_input == 'exit'

        # take input of start time
        puts "Enter start date time in YYYY/MM/DD HH:mm:ss"
        start_time = DateTime.parse(gets.chomp)
        # Exception handled if wrong format
        # raise "Invalid input format. Please use 'YYYY/MM/DD HH:mm:ss'" if start_time.count < 6

        # take input of end time
        puts "Enter end date time in YYYY/MM/DD HH:mm:ss"
        end_time = DateTime.parse(gets.chomp)
        # Exception handled if wrong format
        # raise "Invalid input format. Please use 'YYYY/MM/DD HH:mm:ss'" if end_time.count < 6

        # Append an array contains start_time & end_time
        time_logs << [start_time, end_time]
      end

      # called the add_task method to add the task getting from user
      add_task(task_name, time_logs)

    end
  end

  # defined a method to add task from user
  def add_task(task_name, time_logs_arr)
    # created a hash with name, time_logs
    task = {name: task_name, time_logs: time_logs_arr}
    # append the hash to task_arr
    task_arr << task
  end

  # defined a method to do calculations
  def task_calculation
    # call the user_input method to take input
    user_input()

    # create an array named categories with task_arr names
    categories = task_arr.map{|task| task[:name]}

    # useful variable total_min
    total_min = 24*60

    # initialized an array with length of category array and default value of 0
    total_time = Array.new(categories.length, 0)

    # started each_with_index loop access all index and calculate
    task_arr.each_with_index do |task,index|
      # inner loop to access :time_logs
      task[:time_logs].each do |log|
        # destructure array of log
        start_time, end_time = log
        # calculate total time for particular index
        total_time[index] +=  ((end_time - start_time) * 24*60).to_f
      end
    end

    # calculate  percentage and made an array
    percentage = total_time.map{|time| (time.to_f / total_min).round(2) * 100}

    # initialized output hash
    @output = {
      categories: categories,
      total_time: total_time,
      percentage: percentage
    }

  end

  # defined a method to print output
  def output
    task_calculation()
    puts @output
  end

end

# create an object of Tracker class
obj = Tracker.new
# call the method of obj
obj.output
