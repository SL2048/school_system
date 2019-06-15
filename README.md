# school_system

the link for the deployed api: https://pacific-sea-59473.herokuapp.com

# Api gates

Admin :- 
-----------------------------------------------------

sign up:
  method: POST
  path:   /auth
  body:   [email, password, password_confirmation]

for sign in:
  method: POST
  path:   /auth/sign_in
  body:   [email, password]
  
-----------------------------------------------------


Teacher :-
-----------------------------------------------------

defined as an api reasource under the path /api/v1
header: [access-token, client, uid]

-----------------------------------------------------


Student :-
-----------------------------------------------------

defined as an api reasource under the path /api/v1
header: [access-token, client, uid]

-----------------------------------------------------


Course :-
-----------------------------------------------------

defined as an api reasource under the path /api/v1
header: [access-token, client, uid]

-----------------------------------------------------
