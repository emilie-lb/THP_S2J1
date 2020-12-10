def time_string(time)
 
  hours = time/3600
  minutes = (time-3600*hours)/60
  secondes = (time - 3600*hours - 60*minutes)
  
  if hours < 10
    hours= "0#{hours}"
  end
  if minutes < 10
    minutes = "0#{minutes}"
  end   
  if secondes < 10
    secondes = "0#{secondes}"
  end  
  
  return "#{hours}:#{minutes}:#{secondes}"
end 

#Time.at(time).utc.strftime("%H:%M:%S")