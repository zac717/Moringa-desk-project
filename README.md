# Movie finder
The Movie finder is a server-side API built using Ruby's Sinatra DSL, as part of the Moringa School Phase-3 project. 

The API follows the MVC design pattern, and it provides a backend for a React-based frontend. 

The API supports all CRUD operations, including POST, DELETE, and PATCH, as well as authentication for secure user access.

Here are the links to the repositories and the live link to the project:
 - [Frontend repository](https://github.com/sumeyahajji/movie-finder)
 - [Backend repository](https://github.com/sumeyahajjiphase-3-sinatra-react-project)
 - [Live link](https://poetic-snickerdoodle-e30b72.netlify.app/)

## Built With
This application has been built with the following tools:
![ruby](https://img.shields.io/badge/Ruby-CC342D?style=for-the-badge&logo=ruby&logoColor=white)
![sqlite](https://img.shields.io/badge/SQLite-07405E?style=for-the-badge&logo=sqlite&logoColor=white)
- **Ruby `v2.7.+`**
- **SQlite3 `v1.6`**
- **ActiveRecord `v7.0.4`**
- **Rake `v13.0.6`**
- **Puma `v6.1`**
- **rerun `v0.14`**
- **Sinatra `v3.0.5`**
## Setup
You can setup this repository by following this manual
1. Clone the repository
    ```{shell}
   git clone https://github.com/sumeyahajji/phase-3-sinatra-react-project
   ```
2. Ensure the ruby gems are setup in your machine
    ```{shell}
   bundle install
   ```
3. Perform any pending database migrations
   ```{shell}
   rake db:migrate
   ```
4. Run the application
    ```{shell}
    rake start
    ```
5. Open the application from your browser
    ```
   http://localhost:9292
   ```
## Application
This application is a simple web API that allows users to:
- Register a new account.
- Log in to existing account.
- Create Movies.
- Update individual movies.
- View all movies.
- Filter movies by title.
- Delete individual movie.
### MODELS
Database schema definitions.
#### 

#### USER
| COLUMN        | DATA TYPE | DESCRIPTION                           |
|---------------|-----------|---------------------------------------|
| id            | Integer   | Unique identifier.                    |
| username     | String    | User's username                   |
 | email     | String    | User's email                  |
| password_hash | String    | User's password hashed with `BCrypt`. |
| updated_at    | Date      | The date the user was updated.        |
| createdAt     | Date      | The date the user was created.        |
### ROUTES
1. `/users` - Create a new user account.
   ```{json}
   ## REQUEST BODY
   {
    "username": "John Doe",
    "email": "mail@mail.com",
    "password": "12345678"
   }
   ```
2. `login` - Log in a user using username and password.
   ```{json}
   ## REQUEST BODY
   {
    "username": "John Doe",
    "password": "12345678"
   }
   ```
3. `/users/:user_id/movies` - Add a new TODO item.
   ```{json}
  {

  "id": 1,

  "title": "Black Panther",

  "genre_id": null,
  "images": null,
  "": null,
  "created_at": "2023-03-06T22:01:18.970Z",
  "updated_at": "2023-03-06T22:01:18.970Z",
  "image": "https://m.media-amazon.com/images/M/MV5BNTM4NjIxNmEtYWE5NS00NDczLTkyNWQtYThhNmQyZGQzMjM0XkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_FMjpg_UX1000_.jpg",

  "description": "The people of Wakanda fight to protect their home from intervening world powers as they mourn the death of King T'Challa.",

  "rating": 7,
  "genre": "Action"
  }
   ```
4. `/movies` - List all movies.
   ```{json}
   ## RESPONSE SAMPLE
   {
      "movies": [
     {
      "id": 26,
      "title": "Wednesday?",
      "user_id": 6,
      "created_at": "2023-03-05T07:00:16.885Z",
      "updated_at": "2023-03-05T07:00:16.885Z",
      "user": {
        "username": "sumeya"
      }
    ]
   }
   ```
5. `/users/:id/movies/:movie_id` - Update an existing and users movie.
6. `/movies/:id/users/:user_id` - Delete a TODO item.
## LICENSE
This repository is distributed under the ISC License
```markdown
Copyright 2023 Sumeya Haji
Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”),

to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software,

and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.

IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
```
## Author
This repository is maintained by:
- [Sumeyahajji](https://github.com/sumeyahajji)
- [zac717](https://github.com/zac717)
- [Amiiinkey](https://github.com/Amiiinkey)
- [EvalyneMueke](https://github.com/EvalyneMueke)
