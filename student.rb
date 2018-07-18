## This class is for a simple student profile. It does not have all of the student profile characteristics yet, Nirmal
# made the initial version of this just so that he had something to work with for the matching algorithm.

class Student

  # This class provides a constructor for the respective variables to be initialized.
  # Whoever is responsible for account management/when we get to front-end we should make it so that when the user creates an account
  # they have to pick options when it comes to grade/school.
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

  # The following get functions serve as accessor functions to retrieve the instance and class variables above since
  # they are effectively private
  def get_name
    return @std_name
  end

  def get_grade
    return @std_grade
  end

  def get_school
    return @std_school
  end

  def get_email
    return @std_email
  end

  def get_gpa
    return @std_gpa
  end

  # The following set of functions allow the user to change their grade, school, email, and gpa
  def change_grade(grade)
    @std_grade = grade
  end

  def change_school(school)
    @std_school = school
  end

  def change_email(email)
    @std_email = email
  end

  def change_gpa(new_gpa)
    @std_gpa = new_gpa
  end

  # The following display function allows the user to extract information about the student in a succinct array
  # format so that it can be easily manipulated in other classes/functions

  def get_student_details
    student_info = Array.new(5)
    student_info[1] = @std_name
    student_info[2] = @std_school
    student_info[3] = @std_grade
    student_info[4] = @std_email
    student_info[5] = @@rating
    return student_info
  end


end