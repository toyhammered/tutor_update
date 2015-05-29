# Course has_many Tutor
# Tutor has_many Availability && belongs_to Course
# Availability has_many Tutor 


Course.create(name: "design")
Course.create(name: "interior_design")
Course.create(name: "web_graphic")
Course.create(name: "game_design")

Tutor.create(course_id: 1, name: "Daniel", email: "Daniel@rassiner.com")
Availability.create(tutor_id: 1, day: "monday", time: "morning", start_time: 11:00, end_time: 12:00, room: 123)
Availability.create(tutor_id: 1, day: "monday", time: "afternoon", start_time: 13:00, end_time: 14:00, room: 567) 

Tutor.create(course_id: 1, name: "Ali", email: "Ali@klein.com")
Availability.create(tutor_id: 2, day: "monday", time: "morning", start_time: 10:00, end_time: 11:00, room: 204)

Tutor.create(course_id: 1, name: "Fake1", email: "Fake1@fake1.com")
Availability.create(tutor_id: 3, day: "monday", time: "morning", start_time: 10:00, end_time: 11:00, room: 204)

Tutor.create(course_id: 1, name: "Fake2", email: "Fake2@Fake2.com")
Availability.create(tutor_id: 4, day: "monday", time: "morning", start_time: 9:00, end_time: 11:00, room: 204)

Tutor.create(course_id: 1, name: "Fake3", email: "Fake3@Fake3.com")
Availability.create(tutor_id: 5, day: "monday", time: "morning", start_time: 7:00, end_time: 8:00, room: 204)