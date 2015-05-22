# Course has_many Tutor
# Tutor has_many Availability && belongs_to Course
# Availability has_many Tutor 


Course.create(name: "design")
Course.create(name: "interior_design")
Course.create(name: "web_graphic")
Course.create(name: "game_design")

Tutor.create(course_id: 1, name: "Daniel", email: "Daniel@rassiner.com")
Availability.create(tutor_id: 1, day: "monday", time: "morning", from: 11, to: 12)
Availability.create(tutor_id: 1, day: "monday", time: "afternoon", from: 13, to: 14) 

Tutor.create(course_id: 1, name: "Ali", email: "Ali@klein.com")
Availability.create(tutor_id: 2, day: "monday", time: "morning", from: 10, to: 11)
Availability.create(tutor_id: 2, day: "monday", time: "afternoon", from: 13, to: 14) 