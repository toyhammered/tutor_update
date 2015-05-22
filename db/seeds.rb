# Course has_many Tutor
# Tutor has_many Availability && belongs_to Course
# Availability has_many Tutor 


Course.create(name: "design")
Course.create(name: "interior_design")
Course.create(name: "web_graphic")
Course.create(name: "game_design")

Tutor.create(course_id: 1, name: "Daniel", email: "Daniel@rassiner.com")
Availability.create(tutor_id: 1, day: "monday", time: "morning", start_time: 11, end_time: 12, room: 123)
Availability.create(tutor_id: 1, day: "monday", time: "afternoon", start_time: 13, end_time: 14, room: 567) 

Tutor.create(course_id: 1, name: "Ali", email: "Ali@klein.com")
Availability.create(tutor_id: 2, day: "monday", time: "morning", start_time: 10, end_time: 11, room: 204)
