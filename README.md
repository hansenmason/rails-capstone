## Dependencies

Install with `bundle install`.

-   [`rails-api`](https://github.com/rails-api/rails-api)
-   [`rails`](https://github.com/rails/rails)
-   [`active_model_serializers`](https://github.com/rails-api/active_model_serializers)
-   [`ruby`](https://www.ruby-lang.org/en/)
-   [`postgres`](http://www.postgresql.org)

## Pico Fermi

My app is a game called "pico fermi bagel". A secret number is generated upon
creating a game, of which the user tries to guess the number, a three or four
digit number. Through use of feedback in the form of "pico", "fermi", and "bagel",
the user narrows down the number until they eventually guess it, based on information
from the previous guesses. Pico means a digit is a the correct number, however
the number is in the wrong digits place. Fermi means there is a correct digit
in the correct place. Bagel means there are no numbers guessed in the correct
number. My app allows a user to create a game with their own words for pico,
fermi, and bagel for either a three digit or four digit number. The app then
allows you to view any and all other games that have been posted, seperated by
three digit game lists and four digit game lists. However, a user may only edit or delete
their own created games, that includes renaming the pico fermi bagel names. Enjoy!


-   Link to front end github repo: https://github.com/hansenmason/react-capstone
-   Link to deployed front end: https://hansenmason.github.io/react-capstone
-   Link to deployed back end: https://hansencapstone.herokuapp.com/


## Technologies used

For this project I used ruby on rails for api interfacing and react for front end.
I used CSS for styling.


## Problems

One problem I was trying to solve, but was unable to fix, involved generating
a new number as an edit to a game rather than having to start a new one to
generate a new number through the create CRUD. The way I planned to implement
it was having to put the game logic and randomnumber into the update file,
but I thought this would be too much, and figured there must have been a way
to make a form for it but was unable to do so. I hope to solve this, as well as
add more digit types into the mix.

## Planningg

My planning was the get the back end in order, and then go to the game logic,
and finally add the styling. I had difficulty finding out what to save to the user,
and what to be able to update, and destroy. I ended up allowing a user to
save their words for pico fermi and bagel as their own, which then get used
in the in-game feedback. This is able to be updated to the game, as well as a user
can delete their game. I also thought about saving the number locally, but I
ended up adding it to the user on the background, as I found this more efficient.
I then moved onto the front end, and built the game logic. I then moved on the
CRUD of the games. I then added a four digit game to the back end, and then
established it in the front end. Once this was completed, I worked on the colors
for the site, and the other css. Any problems that I arose I used console.log
for and worked based on the feedback. I did a lot of referring to google as well,
especially with back end, and css. I also asked peers for help with css.

## User Stories

-   As a user, I want to be able to sign up using an email address and password
-   As a user, I want to be able to sign in, and also change my password
-   As a user, I want to be able to create games when signed in
-   As a user, I want to be able to play the game that I create
-   As a user, I want to be able to play the game that others have created
-   As a user, I want to be able to edit what I call each feedback event
-   As a user, I want to be able to delete only my games, and not others
-   As a user, I want to be able to update only my games, and not others
-   As a user, I want to it to show each feedback guess so I can use that as info
-   As a user, I want it to be clear when the game is over

## Link to ERD

https://imgur.com/5o94rfx

### Customize Template:
1.  Fork and Clone this repository into desired folder.
1.  Move into the new project and `git init`.
1.  Open in atom or equivalent.
1.  Empty [`README.md`](README.md) and fill with your own content.
1.  Rename your app module in `config/application.rb` (change
    `RailsApiCapstone`).
1.  Rename your project database in `config/database.yml` (change
    `'rails-api-capstone'`).

### Setup Environment:
1.  Install dependencies with `bundle install`.
1.  `git add` and `git commit` your changes.
1.  Create a `.env` for sensitive settings (`touch .env`).
1.  Generate new `development` and `test` secrets (`bundle exec rails secret`).
1.  Store them in `.env` with keys `SECRET_KEY_BASE_<DEVELOPMENT|TEST>`
    respectively.
1.  In order to make requests to your deployed API, you will need to set
    `SECRET_KEY_BASE` in the environment of the production API (for example, using `heroku config:set` or the Heroku dashboard).
1.  In order to make requests from your deployed client application, you will
    need to set `CLIENT_ORIGIN` in the environment of the production API (for example, `heroku config:set CLIENT_ORIGIN=https://<github-username>.github.io`).
    See more about deploying to heroku [rails-heroku-setup-guide](https://git.generalassemb.ly/ga-wdi-boston/rails-heroku-setup-guide)

### Setup your database:
    - bin/rails db:drop (if it already exists)
    - bin/rails db:create
    - bin/rails db:migrate
    - bin/rails db:seed
    - bin/rails db:examples

  Note: Remember to follow the same commands when setting up your deployed database!

### Run your server!
1. Run the API server with `bin/rails server` or `bundle exec rails server`.

## Structure

This template follows the standard project structure in Rails.

`curl` command scripts are stored in [`curl-scripts`](curl-scripts) with names that
correspond to API actions.

User authentication is built-in.

## Tasks

Developers should run these often!

-   `bin/rails routes` lists the endpoints available in your API.
-   `bin/rspec spec` runs automated tests.
-   `bin/rails console` opens a REPL that pre-loads the API.
-   `bin/rails db` opens your database client and loads the correct database.
-   `bin/rails server` starts the API.
-   `curl-scripts/*.sh` run various `curl` commands to test the API. See below.

## API

Use this as the basis for your own API documentation. Add a new third-level
heading for your custom entities, and follow the pattern provided for the
built-in user authentication documentation.

Scripts are included in [`curl-scripts`](curl-scripts) to test built-in actions. Add your
own scripts to test your custom API. As an alternative, you can write automated
tests in RSpec to test your API.

### Authentication

| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| POST   | `/sign-up`             | `users#signup`    |
| POST   | `/sign-in`             | `users#signin`    |
| PATCH  | `/change-password`     | `users#changepw`  |
| DELETE | `/sign-out`        | `users#signout`   |

### Games
| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| GET   | `/games`             | `games#index`    |
| GET   | `/games/:id`             | `games#show`    |
| POST  | `/game-create`     | `games#create`  |
| PATCH  | `/games/:id/edit`  | `games#update`  |
| DELETE | `/games/:id`        | `games#destroy`   |

### Games
| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| GET   | `/fourgames`             | `fourgames#index`    |
| GET   | `/fourgames/:id`             | `fourgames#show`    |
| POST  | `/game-create-four`     | `fourgames#create`  |
| PATCH  | `/fourgames/:id/edit`  | `fourgames#update`  |
| DELETE | `/fourgames/:id`        | `fourgames#destroy`   |

#### INDEX /games

Request:

```sh
curl http://localhost:4741/games \
  --include \
  --request GET \
  --header "Content-Type: application/json" \
```

```sh
sh curl-scripts/games/index.sh
```

Response:

```md
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8
ETag: W/"8e17f8a192606ecda3c1afc02c9eb5af"
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 67e75d0c-38ba-491e-b0d3-4c1ee131aaa9
X-Runtime: 0.247275
Vary: Origin
Transfer-Encoding: chunked

{{"games":[{"id":3,"pico":"das","fumi":"adsoj","bagel":"dasoij","number":"079","user_id":2},{"id":2,"pico":"pico","fumi":"fermi","bagel":"bagel","number":"432","user_id":1}]}}
```

### Games

| Verb | URI Pattern | Controller#Action |
|------|-------------|-------------------|
| GET  | `/games`    | `games#index`     |
| GET  | `/games/1`  | `games#show`      |
| PATCH| `/games/1`  | `games#update`    |

#### SHOW /games/:id

Request:

```sh
#!/bin/bash

curl "http://localhost:4741/games/${ID}" \
  --include \
  --request GET \
  --header "Content-Type: application/json" \

echo

```

```sh
ID=3 sh curl-scripts/games/show.sh
```

Response:

```md
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8
ETag: W/"e995854b4c0cfd077c6fd53c89d1e6f1"
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 26e20e67-2044-44d0-8bc3-601b30efdd46
X-Runtime: 0.032589
Vary: Origin
Transfer-Encoding: chunked

{"game":{"id":3,"pico":"pico","fumi":"fumi","bagel":"bagel","number":"579","user_id":2}}
```

#### CREATE /game-create

Request:

```sh
#!/bin/bash

curl "http://localhost:4741/games" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "game": {
      "pico": "'"${PICO}"'",
      "fumi": "'"${FERMI}"'",
      "bagel": "'"${BAGEL}"'",
      "number": "'"${NUMBER}"'"
    }
  }'

echo
```

```sh
PICO=pico FERMI=fermi BAGEL=bagel NUMBER=182 TOKEN=token sh curl-scripts/games/create.sh
```

Response:

```md
HTTP/1.1 201 Created
Location: http://localhost:4741/games/6
Content-Type: application/json; charset=utf-8
ETag: W/"85400c3ce144089118f509f73f512d46"
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 88a904e0-2ff9-487a-a15d-4f3936feaae8
X-Runtime: 0.154324
Vary: Origin
Transfer-Encoding: chunked

{"game":{"id":6,"pico":"pico","fumi":"fermi","bagel":"bagel","number":"182","user_id":1}}
```

#### UPDATE /games/:id/edit

Request:

```sh
#!/bin/bash

curl "http://localhost:4741/games/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "game": {
      "pico": "'"${PICO}"'",
      "fumi": "'"${FERMI}"'",
      "bagel": "'"${BAGEL}"'",
      "number": "'"${NUMBER}"'",
      "id": "'"${ID}"'"
    }
  }'

echo

```

```sh
PICO=pico FERMI=fermi BAGEL=bagel NUMBER=182 TOKEN=token ID=6 sh curl-scripts/games/update.sh
```

Response:

```md
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8
ETag: W/"85400c3ce144089118f509f73f512d46"
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 5a1e3823-20a3-4621-9a8d-af805082837a
X-Runtime: 0.033296
Vary: Origin
Transfer-Encoding: chunked

{"game":{"id":6,"pico":"pico","fumi":"fermi","bagel":"bagel","number":"182","user_id":1}}
```

#### DESTROY /games/:id

Request:

```sh
#!/bin/bash

curl "http://localhost:4741/games/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "game": {
      "id": "'"${ID}"'"
    }
  }'

echo

```

```sh
ID=6 TOKEN=token sh curl-scripts/games/destroy.sh
```

Response:

```md
HTTP/1.1 204 No Content
Cache-Control: no-cache
X-Request-Id: 3f234c77-c468-4800-ae7f-851649e59b82
X-Runtime: 0.040461
Vary: Origin
```

#### INDEX /fourgames

Request:

```sh
curl http://localhost:4741/fourgames \
  --include \
  --request GET \
  --header "Content-Type: application/json" \
```

```sh
sh curl-scripts/fourgames/index.sh
```

Response:

```md
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8
ETag: W/"8e17f8a192606ecda3c1afc02c9eb5af"
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 67e75d0c-38ba-491e-b0d3-4c1ee131aaa9
X-Runtime: 0.247275
Vary: Origin
Transfer-Encoding: chunked

{{"games":[{"id":3,"pico":"das","fumi":"adsoj","bagel":"dasoij","number":"0791","user_id":2},{"id":2,"pico":"pico","fumi":"fermi","bagel":"bagel","number":"4327","user_id":1}]}}
```

### Fourgames

| Verb | URI Pattern | Controller#Action |
|------|-------------|-------------------|
| GET  | `/fourgames`    | `fourgames#index`     |
| GET  | `/fourgames/1`  | `fourgames#show`      |
| PATCH| `/fourgames/1`  | `games#update`    |

#### SHOW /fourgames/:id

Request:

```sh
#!/bin/bash

curl "http://localhost:4741/fourgames/${ID}" \
  --include \
  --request GET \
  --header "Content-Type: application/json" \

echo

```

```sh
ID=3 sh curl-scripts/fourgames/show.sh
```

Response:

```md
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8
ETag: W/"e995854b4c0cfd077c6fd53c89d1e6f1"
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 26e20e67-2044-44d0-8bc3-601b30efdd46
X-Runtime: 0.032589
Vary: Origin
Transfer-Encoding: chunked

{"game":{"id":3,"pico":"pico","fumi":"fumi","bagel":"bagel","number":"3579","user_id":2}}
```

#### CREATE /game-create-four

Request:

```sh
#!/bin/bash

curl "http://localhost:4741/fourgames" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "game": {
      "pico": "'"${PICO}"'",
      "fumi": "'"${FERMI}"'",
      "bagel": "'"${BAGEL}"'",
      "number": "'"${NUMBER}"'"
    }
  }'

echo
```

```sh
PICO=pico FERMI=fermi BAGEL=bagel NUMBER=1824 TOKEN=token sh curl-scripts/fourgames/create.sh
```

Response:

```md
HTTP/1.1 201 Created
Location: http://localhost:4741/fourgames/6
Content-Type: application/json; charset=utf-8
ETag: W/"85400c3ce144089118f509f73f512d46"
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 88a904e0-2ff9-487a-a15d-4f3936feaae8
X-Runtime: 0.154324
Vary: Origin
Transfer-Encoding: chunked

{"game":{"id":6,"pico":"pico","fumi":"fermi","bagel":"bagel","number":"1782","user_id":1}}
```

#### UPDATE /fourgames/:id/edit

Request:

```sh
#!/bin/bash

curl "http://localhost:4741/fourgames/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "game": {
      "pico": "'"${PICO}"'",
      "fumi": "'"${FERMI}"'",
      "bagel": "'"${BAGEL}"'",
      "number": "'"${NUMBER}"'",
      "id": "'"${ID}"'"
    }
  }'

echo

```

```sh
PICO=pico FERMI=fermi BAGEL=bagel NUMBER=182 TOKEN=token ID=6 sh curl-scripts/fourgames/update.sh
```

Response:

```md
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8
ETag: W/"85400c3ce144089118f509f73f512d46"
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 5a1e3823-20a3-4621-9a8d-af805082837a
X-Runtime: 0.033296
Vary: Origin
Transfer-Encoding: chunked

{"game":{"id":6,"pico":"pico","fumi":"fermi","bagel":"bagel","number":"3182","user_id":1}}
```

#### DESTROY /fourgames/:id

Request:

```sh
#!/bin/bash

curl "http://localhost:4741/fourgames/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "game": {
      "id": "'"${ID}"'"
    }
  }'

echo

```

```sh
ID=6 TOKEN=token sh curl-scripts/fourgames/destroy.sh
```

Response:

```md
HTTP/1.1 204 No Content
Cache-Control: no-cache
X-Request-Id: 3f234c77-c468-4800-ae7f-851649e59b82
X-Runtime: 0.040461
Vary: Origin
```

#### POST /sign-up

Request:

```sh
curl http://localhost:4741/sign-up \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'",
      "password_confirmation": "'"${PASSWORD}"'"
    }
  }'
```

```sh
EMAIL=ava@bob.com PASSWORD=hannah curl-scripts/auth/sign-up.sh
```

Response:

```md
HTTP/1.1 201 Created
Content-Type: application/json; charset=utf-8

{
  "user": {
    "id": 1,
    "email": "ava@bob.com"
  }
}
```

#### POST /sign-in

Request:

```sh
curl http://localhost:4741/sign-in \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'"
    }
  }'
```

```sh
EMAIL=ava@bob.com PASSWORD=hannah curl-scripts/auth/sign-in.sh
```

Response:

```md
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8

{
  "user": {
    "id": 1,
    "email": "ava@bob.com",
    "token": "BAhJIiVlZDIwZTMzMzQzODg5NTBmYjZlNjRlZDZlNzYxYzU2ZAY6BkVG--7e7f77f974edcf5e4887b56918f34cd9fe293b9f"
  }
}
```

#### PATCH /change-password

Request:

```sh
curl --include --request PATCH "http://localhost:4741/change-password" \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "passwords": {
      "old": "'"${OLDPW}"'",
      "new": "'"${NEWPW}"'"
    }
  }'
```

```sh
OLDPW='hannah' NEWPW='elle' TOKEN='BAhJIiVlZDIwZTMzMzQzODg5NTBmYjZlNjRlZDZlNzYxYzU2ZAY6BkVG--7e7f77f974edcf5e4887b56918f34cd9fe293b9f' sh curl-scripts/auth/change-password.sh
```

Response:

```md
HTTP/1.1 204 No Content
```

#### DELETE /sign-out

Request:

```sh
curl http://localhost:4741/sign-out \
  --include \
  --request DELETE \
  --header "Authorization: Token token=$TOKEN"
```

```sh
TOKEN='BAhJIiVlZDIwZTMzMzQzODg5NTBmYjZlNjRlZDZlNzYxYzU2ZAY6BkVG--7e7f77f974edcf5e4887b56918f34cd9fe293b9f' sh curl-scripts/auth/sign-out.sh
```

Response:

```md
HTTP/1.1 204 No Content
```

### Users

| Verb | URI Pattern | Controller#Action |
|------|-------------|-------------------|
| GET  | `/users`    | `users#index`     |
| GET  | `/users/1`  | `users#show`      |
| PATCH| `/users/1`  | `users#update`    |

#### GET /users

Request:

```sh
curl http://localhost:4741/users \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"
```

```sh
TOKEN=BAhJIiVlZDIwZTMzMzQzODg5NTBmYjZlNjRlZDZlNzYxYzU2ZAY6BkVG--7e7f77f974edcf5e4887b56918f34cd9fe293b9f curl-scripts/users.sh
```

Response:

```md
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8

{
  "users": [
    {
      "id": 2,
      "email": "bob@ava.com"
    },
    {
      "id": 1,
      "email": "ava@bob.com"
    }
  ]
}
```

#### GET /users/:id

Request:

```sh
curl --include --request GET http://localhost:4741/users/$ID \
  --header "Authorization: Token token=$TOKEN"
```

```sh
ID=2 TOKEN=BAhJIiVlZDIwZTMzMzQzODg5NTBmYjZlNjRlZDZlNzYxYzU2ZAY6BkVG--7e7f77f974edcf5e4887b56918f34cd9fe293b9f curl-scripts/user.sh
```

Response:

```md
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8

{
  "user": {
    "id": 2,
    "email": "bob@ava.com"
  }
}
```

#### PATCH /users/:id

Request:

```sh
curl "http://localhost:4741/users/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "user": {
      "email": "'"${EMAIL}"'"
    }
  }'
```

```sh
ID=1 TOKEN="BAhJIiU1NGNlYjRmMjBhM2NkZTZiNzk1MGNiYmZiYWMyY2U4MwY6BkVG--ddb1e16af0e05921aa56d771e4a2f816f2a1d46e"
EMAIL=mike@m
sh curl-scripts/users/user-update.sh
```

Response:

```md
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8

{"user":{"id":1,"email":"mike@m"}}
```

### Reset Database without dropping

This is not a task developers should run often, but it is sometimes necessary.

**locally**

```sh
bin/rails db:migrate VERSION=0
bin/rails db:migrate db:seed db:examples
```

**heroku**

```sh
heroku run rails db:migrate VERSION=0
heroku run rails db:migrate db:seed db:examples
```

## Additional Resources
- [rails-heroku-setup-guide](https://git.generalassemb.ly/ga-wdi-boston/rails-heroku-setup-guide)
- http://guides.rubyonrails.org/api_app.html
- https://blog.codeship.com/building-a-json-api-with-rails-5/

## [License](LICENSE)

1.  All content is licensed under a CC­BY­NC­SA 4.0 license.
1.  All software code is licensed under GNU GPLv3. For commercial use or
    alternative licensing, please contact legal@ga.co.
