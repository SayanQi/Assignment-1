module TasksHelper
  def date_passed?(date)
    date.past?
  end

  def errors_for(model, key)
    tag.div(class: "mt-2 form-error") do
      model.errors.messages_for(key).join(", ")
    end
  end

  def time_calculation(task)
    current_datetime = DateTime.now
    # Calculate the time difference
    time_difference = task.pending_date - current_datetime
    days = (time_difference / 1.day).to_i
    hours = ((time_difference % 1.day) / 1.hour).to_i
    minutes = ((time_difference % 1.hour) / 1.minute).to_i
    seconds = (time_difference % 1.minute).to_i

    if(time_difference > 0)
      "#{days} days, #{hours} hr, #{minutes} min, #{seconds} sec"
    else
      "Time Over !"
    end
  end
end
