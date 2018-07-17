## This class is for a simple student profile. It does not have all of the student profile characteristics yet, Nirmal
# made the initial version of this just so that he had something to work with for the matching algorithm.

class Student

  # This class provides a constructor for the respective variables to be initialized.
  def initialize (name, grade, school, email, gpa)
    @std_name = name
    @std_grade = grade
    @std_school = school
    @std_email = email
    @std_gpa = gpa
  end

  # Class variable for student rating
  @@rating = @std_gpa*100

  # Rating method for a student, other students should be able to access this rating after working with their peers
  def rate (number)
    if number < -50 || number > 50
      throw new ArgumentError ("User rating must be between -5 and 5 stars")
    end
    @number = number
    @@rating += number
  end

  
end