# https://www.hackerrank.com/challenges/grading/problem

def gradingStudents(grades):
    for i in range(len(grades)):
        # if the value of grade is less than 38, 
        # no rounding occurs as the result will still be a failing grade.
        if grades[i] > 37:
            diff_to_next_multiple_of_5 = 5 - grades[i] % 5
            # if the difference between 
            # the grade and the next multiple of 5 is less than 3,
            # round  up to the next multiple of 5.
            if diff_to_next_multiple_of_5 < 3:
                grades[i] += diff_to_next_multiple_of_5
    return grades
