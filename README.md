# Exercise: Ruby Closures

1. Write a method named `with_these_numbers` so that the following code will work:
    
    ```ruby
    with_these_numbers(1, 4) do |first, second|
      puts first + second # Output: 5
    end
    
    with_these_numbers(3, 6) do |first, second|
      puts first * second # Output: 18
    end
    
    with_these_numbers(12, 3) do |first, second|
      puts first / second # Output: 4
    end
    ```
    
2. Create a `Car` class that allows this syntax to work
    
    ```ruby
    car = Car.new do |c|
      c.color = "Red"
      c.plate_number = "ABC 1234"
      c.manufacturer = "Toyota"
    end
    ```
    

## Challenge

Create a class that uses this syntax

```ruby
Bootcamp.new do
  topic "Inheritance" do
    desc "All about inheritance"
    details do
      lecturer "Ady"
      date "2023-3-28"
    end
  end

  topic "Closures" do
    desc "Blocks, Procs and Lambdas"
    details do
      lecturer "Ady"
      date "2023-3-28"
    end
  end
end
```

When run in irb it should output this:

```
Welcome to bootcamp!

Topic: Inheritance
Description: All about inheritance
Lecturer: Ady
Date: Tuesday, Mar 28

Topic: Closures
Description: Blocks, Procs and Lambdas
Lecturer: Ady
Date: Tuesday, Mar 28
```

Tip: `instance_eval` is a way to add a method to an instance of a class on the spot. It takes in either a string or block and executes that within scope of the instance (e.g. has access to variables and methods)
