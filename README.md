# school_system

the link for the deployed api: https://pacific-sea-59473.herokuapp.com

# Api gates

Admin :- 
-----------------------------------------------------

sign up:
  method: POST
  path:   https://pacific-sea-59473.herokuapp.com/auth
  body:   [email, password, password_confirmation]

for sign in:
  method: POST
  path:   https://pacific-sea-59473.herokuapp.com/auth/sign_in
  body:   {email: string, password: string}
  
-----------------------------------------------------


Teacher :-
-----------------------------------------------------

defined as an api reasource

get all teachers:
  method: GET
  path: https://pacific-sea-59473.herokuapp.com/api/v1/teachers
  header: {access-token, client, uid}
  
get teacher by id:
  method: GET
  path: https://pacific-sea-59473.herokuapp.com/api/v1/teachers/:id
  header: {access-token, client, uid}
  
create new teacher:
  method: POST
  path: https://pacific-sea-59473.herokuapp.com/api/v1/teachers
  header: {access-token, client, uid}
  body: teacher: { name: string, salary: integer, subject: string, course_ids }

edit a teacher by id:
  method: PUT/PATCH
  path: https://pacific-sea-59473.herokuapp.com/api/v1/teachers/:id
  header: {access-token, client, uid}

delete a teacher by id:
  method: DELETE
  path: https://pacific-sea-59473.herokuapp.com/api/v1/teachers/:id
  header: {access-token, client, uid}

-----------------------------------------------------


Student :-
-----------------------------------------------------

defined as an api reasource

get all students:
  method: GET
  path: https://pacific-sea-59473.herokuapp.com/api/v1/students
  header: {access-token, client, uid}
  
get student by id:
  method: GET
  path: https://pacific-sea-59473.herokuapp.com/api/v1/students/:id
  header: {access-token, client, uid}
  
create new student:
  method: POST
  path: https://pacific-sea-59473.herokuapp.com/api/v1/students
  header: {access-token, client, uid}
  body: student: { name: string, dateOfBirth: date, address: string, course_ids }

edit a student by id:
  method: PUT/PATCH
  path: https://pacific-sea-59473.herokuapp.com/api/v1/students/:id
  header: {access-token, client, uid}

delete a student by id:
  method: DELETE
  path: https://pacific-sea-59473.herokuapp.com/api/v1/students/:id
  header: {access-token, client, uid}

-----------------------------------------------------


Course :-
-----------------------------------------------------

defined as an api reasource

get all courses:
  method: GET
  path: https://pacific-sea-59473.herokuapp.com/api/v1/courses
  header: {access-token, client, uid}
  
get course by id:
  method: GET
  path: https://pacific-sea-59473.herokuapp.com/api/v1/courses/:id
  header: {access-token, client, uid}
  
create new course:
  method: POST
  path: https://pacific-sea-59473.herokuapp.com/api/v1/courses
  header: {access-token, client, uid}
  body: student: { name: string, code: string, course_ids }

edit a course by id:
  method: PUT/PATCH
  path: https://pacific-sea-59473.herokuapp.com/api/v1/courses/:id
  header: {access-token, client, uid}

delete a course by id:
  method: DELETE
  path: https://pacific-sea-59473.herokuapp.com/api/v1/courses/:id
  header: {access-token, client, uid}

-----------------------------------------------------
