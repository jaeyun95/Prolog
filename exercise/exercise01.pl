%example01
student(JaeYun). %JaeYun is student
student(YoungSuk). %YoungSuk is student
student(JaeLong). %JaeLong is student

%example02
student(Jaeyun):- happy(Jaeyun). %If JaeYun is happy, JaeYun will student, 
student(YoungSuk):- studyHard(YoungSuk). %If YoungSuk is studey hard, YoungSuk is student.
student(JaeLong):- unhappy(JaeLong).  %If JaeLong is unhappy, JaeLong is student.

%example02
loves(JaeYun,YoungSuk)
loves(YoungSuk,JaeYun)
loves(JaeYun,JaeLong)