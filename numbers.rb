class Test 
    def with_these_numbers(num1, num2) 
        yield(num1, num2)
    end
       
end

Test.new.with_these_numbers(1, 4) do |first, second|
    puts first + second
end

Test.new.with_these_numbers(3, 6) do |first, second|
    puts first * second
end

Test.new.with_these_numbers(12, 3) do |first, second|
    puts first / second
end