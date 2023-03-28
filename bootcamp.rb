class Bootcamp

  # attr_accessor :topic, :description, :lecturer, :date

  # def initialize(topic, description, lecturer, date)
  #   @topic = topic
  #   @description = description
  #   @lecturer = lecturer
  #   @date = date
  # end
  hello_method = Proc.new { puts "Welcome to bootcamp!" }
  topic= lambda { | topic | puts "Topic: " + topic}
  desc = lambda { | description | puts "Description: " + description}
  lecturer = lambda { | lecturer | puts "Lecturer: " + lecturer}
  date = lambda { | date | puts "Date: " + date}

  hello_method.call
  topic.call("Inheritance")
  desc.call("All about inheritance")
  lecturer.call("Ady")
  date.call("Tuesday, Mar 28")


  topic= lambda { | topic | puts "Topic: " + topic}
  desc = lambda { | description | puts "Description: " + description}
  lecturer = lambda { | lecturer | puts "Lecturer: " + lecturer}
  date = lambda { | date | puts "Date: " + date}

  topic.call("Closures")
  desc.call("Blocks, Procs and Lambdas")
  lecturer.call("Ady")
  date.call("Tuesday, Mar 28")
end

