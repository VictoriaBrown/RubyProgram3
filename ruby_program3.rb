class RubyProgram3
  # Initialize a counter for loop.
  @counter=1

  ARGV.each do|a|

    if @counter==1
      $name1 = a
    end

    if @counter==2
      $name2 = a
    end

    if @counter==3
      $name3 = a
    end

    @counter += 1
  end

  class Students

    def greeting()
      puts ''
      puts 'Thank you for running this program.'
      puts ''
    end

    def initialize(name_one, name_two, name_three)
      @name_1 = name_one
      @name_2 = name_two
      @name_3 = name_three
    end

    # Enter the names into an array
    @@nameArray = Array[@name_1,@name_2, @name_3]

    # Create a hash
    nameHash = Hash.new
    nameHash[$name1] = 'Pancakes'
    nameHash[$name2] = 'Eggs'
    nameHash[$name3] = 'Bacon'

    # Integer to hold size of array
    arraySize = @@nameArray.size
    puts ''
    # Output the size of nameArray
    puts "Size of nameArray #{arraySize}"
    puts ''
    puts nameHash

    # printNames method to repeat the names the user types in
    def printNames()
      puts "Name 1: #@name_1"
      puts "Name 2: #@name_2"
      puts "Name 3: #@name_3"
    end

    def checkBob()
      # Check to see if first name is Bob
      if @name_1 == 'Bob'
        count=1
        while count <= 3 do
          puts 'Good to see you Bob'
          count += 1
        end
      end

      # Check to see if second name is Bob
      if @name_2 == 'Bob'
        count=1
        while count <= 3 do
          puts 'Good to see you Bob'
          count += 1
        end
      end

      # Check to see if third name is Bob
      if @name_3 == 'Bob'
        count=1
        while count <= 3 do
          puts 'Good to see you Bob'
          count += 1
        end
      end
    end

    def checkSue()
      name='Sue'
      case name
        when @name_1
          for i in 1..4
            puts 'Nice to meet you Sue'
          end
        when @name_2
          for i in 1..4
            puts 'Nice to meet you Sue'
          end
        when @name_3
          for i in 1..4
            puts 'Nice to meet you Sue'
          end
      end
    end

    def multiply_numbers(a, b)
      @product=a*b
      puts "Product: #@product"
    end

    def checkForDuplicates()
      puts ''
      if @name_1.downcase == @name_2.downcase
        puts "Duplicate is: #@name_1"
      end
      if @name_1.downcase == @name_3.downcase
        puts "Duplicate is: #@name_1"
      end
      if @name_2.downcase == @name_3.downcase
        puts "Duplicate is: #@name_2"
      end
    end

    def reverseCharacters()
      puts ''
      puts 'Reversing the characters in the names entered...'
      print 'Name 1: '
      puts @name_1.reverse
      print 'Name 2: '
      puts @name_2.reverse
      print 'Name 3: '
      puts @name_3.reverse
    end

    def swapCase()
      puts ''
      puts 'Swapping the case of the characters of names...'
      print 'Name 1: '
      puts @name_1.swapcase
      print 'Name 2: '
      puts @name_2.swapcase
      print 'Name 3: '
      puts @name_3.swapcase
    end

    def currentDate()
      time1 = Time.new
      puts ''
      print 'The date and local time: '
      puts time1.inspect
    end

    def clearTheArray()
      puts ''
      @@nameArray.delete_at(2)
      @@nameArray.delete_at(1)
      @@nameArray.delete_at(0)
      arraySize = @@nameArray.size
      puts "Size of nameArray #{arraySize}"
    end

  end

  # Create an instance of the class Students
  student1 = Students.new($name1, $name2, $name3)

  student1.greeting

  # Call the methods printNames, checkBob, and checkSue from Student object
  student1.printNames
  student1.checkBob
  student1.checkSue

  student1.checkForDuplicates
  student1.reverseCharacters
  student1.swapCase
  student1.currentDate
  student1.clearTheArray


end