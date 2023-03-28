class Bootcamp
    topic = ['Closures', 'Inheritance']
    topic.instance_eval do

      lecturer = 'Ady'
      date = 'Date: Tuesday, Mar 28'

      puts "Welcome to bootcamp!"

      def my_method(topic, &my_proc)
       
        my_proc.call(topic)
        my_proc.call(desc)
      end

      topic.each_with_index do |topic, index|
        puts "Topic: #{topic}"

        desc =  ['All about inheritance', ' Blocks, Procs and Lambdas']

        desc.instance_eval  do  
          def description(desc, &my_proc)
            my_proc.call(desc)
          end
    
           puts "Description: #{desc[index]}"
 
        end
        
        puts "Lecturer: #{lecturer}"
        puts "Date: #{date}"
        
      end
    end   
      
end

# Bootcamp.new do
#     topic "Inheritance" do
#       desc "All about inheritance"
#       details do
#         lecturer "Ady"
#         date "2023-3-28"
#       end
#     end
  
#     topic "Closures" do
#       desc "Blocks, Procs and Lambdas"
#       details do
#         lecturer "Ady"
#         date "2023-3-28"
#       end
#     end
#   end