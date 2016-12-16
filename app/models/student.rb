class Student < ActiveRecord::Base

  def displayname
    # need clarification on a scenario where both the initials are same.
    # e.g what if the students name are (David Beckham, David Boon) what should we display.
    students = Student.where(firstname: firstname)
    students.count == 1 ?  firstname : firstname + ' ' + lastname[0, 1] + '.'
  end
end
