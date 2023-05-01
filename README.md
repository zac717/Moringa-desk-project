# MORINGADESK
The MoringaDesk project aims to solve the problem of students facing technical issues and difficulties repeatedly, leading to duplication of help received.
The solution is to create a system that curates the problems faced by students and their possible solutions. The system allows students to log in to their account to raise a problem, vote on a solution or leave an answer to a posted question.
Solutions are tagged to make it easier for students to filter through them based on aspects such as Language, Stage, Logical or Technical challenge, etc. The system also allows students to highlight answers that they found useful.
The solutions provided are stored in a way that allows referencing regardless of the cohort a student belongs to.
Here are the links to the repositories and the live link to the project:
 - [Project repository](https://github.com/zac717/Moringa-desk-project)
 - [Live link](https://moringa-desk.onrender.com)
## Built With
This application has been built with the following tools:
- **Ruby `v2.7.+`**
- **SQlite3 `v1.6`**
- **ActiveRecord `v7.0.4`**
- **Puma `v6.1`**
-  **pg `v1.1`**
## Setup
You can setup this repository by following this manual
1. Clone the repository
    ```{shell}
   git clone https://github.com/zac717/Moringa-desk-project
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
   http://127.0.0.1:3000
   ```
   ## Application
This application is a simple web API that allows users to:
- Register a new account.
- Log in to existing account.
-log out from the existing account.
### MODELS
Database schema definitions.
#### USER
| COLUMN        | DATA TYPE |
|---------------|-----------|
| id            | Integer   |
| username      |  String   |
| email         | String    |
| password_hash | String    |
#### QUESTIONS
| COLUMN        | DATA TYPE |
|---------------|-----------|
| title         | string    |
| text          | description|
#### ANSWERS
| COLUMN        | DATA TYPE |
|---------------|-----------|
| text          |description|
#### VOTES
| COLUMN        | DATA TYPE |
|---------------|-----------|
| integer       | value     |
#### TAGS
| COLUMN        | DATA TYPE |
|---------------|-----------|
| name          |   string  |
#### NOTIFICATION
| COLUMN        | DATA TYPE |
|---------------|-----------|
| type          | string    |
| target_type   | string    |
zac717/Moringa-desk-project
Website
https://moringa-desk-project-eaby.vercel.app/
Language
Ruby
Added by GitHub
3:00
## Author
This repository is maintained by:
- [Sumeyahajji](https://github.com/sumeyahajji)
- [zac717](https://github.com/zac717)
- [Amiiinkey](https://github.com/Amiiinkey)
- [EvalyneMueke](https://github.com/EvalyneMueke)
