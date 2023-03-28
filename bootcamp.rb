class Bootcamp
    def initialize(&block)
      @topics = []
      instance_eval(&block)
      display
    end

    def topic(name, &block)
      @topic = { name: name }
      instance_eval(&block)
      @topics << @topic
    end

    def desc(description)
      @topic[:description] = description
    end

    def details(&block)
      instance_eval(&block)
    end

    def lecturer(name)
      @topic[:lecturer] = name
    end

    def date(date)
      @topic[:date] = date
    end

    def display
      puts "Welcome to bootcamp!\n"
      @topics.each do |topic|
        puts "Topic: #{topic[:name]}"
        puts "Description: #{topic[:description]}"
        puts "Lecturer: #{topic[:lecturer]}"
        puts "Date: #{topic[:date]}\n"
      end
    end
  end