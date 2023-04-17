# # Users
# User.create(name: "John Doe", email: "john@example.com", password: "password")
# User.create(name: "Jane Doe", email: "jane@example.com", password: "password")
# User.create(name: "Bob Smith", email: "bob@example.com", password: "password")

# # Tags
# Tag.create(name: "ruby")
# Tag.create(name: "rails")
# Tag.create(name: "javascript")

# # Questions
# question1 = Question.create(title: "How to create a Ruby on Rails application?", body: "I'm new to Ruby on Rails and I want to know how to create a new application.")
# question2 = Question.create(title: "How to use JavaScript with Rails?", body: "I want to add some interactivity to my Rails application using JavaScript. How can I do that?")
# question3 = Question.create(title: "What's the best way to deploy a Rails application?", body: "I'm about to launch my Rails application and I'm not sure what's the best way to deploy it.")

# # Question Tags
# QuestionTag.create(question: question1, tag: Tag.find_by(name: "ruby"))
# QuestionTag.create(question: question1, tag: Tag.find_by(name: "rails"))
# QuestionTag.create(question: question2, tag: Tag.find_by(name: "rails"))
# QuestionTag.create(question: question2, tag: Tag.find_by(name: "javascript"))
# QuestionTag.create(question: question3, tag: Tag.find_by(name: "ruby"))

# # Answers
# Answer.create(question: question1, user: User.find_by(name: "Bob Smith"), body: "You can create a new Rails application using the command `rails new myapp`.")
# Answer.create(question: question2, user: User.find_by(name: "Jane Doe"), body: "You can use the `javascript_include_tag` helper to include a JavaScript file in your Rails application.")
# Answer.create(question: question2, user: User.find_by(name: "John Doe"), body: "You can use AJAX to add interactivity to your Rails application.")
# Answer.create(question: question3, user: User.find_by(name: "Bob Smith"), body: "You can deploy your Rails application using a cloud hosting service like Heroku.")

# # Votes
# Vote.create(user: User.find_by(name: "John Doe"), answer: Answer.find(1), value: 1)
# Vote.create(user: User.find_by(name: "Jane Doe"), answer: Answer.find(1), value: -1)
# Vote.create(user: User.find_by(name: "John Doe"), answer: Answer.find(2), value: 1)
# Vote.create(user: User.find_by(name: "Jane Doe"), answer: Answer.find(2), value: 1)

# # Notifications
# Notification.create(user: User.find_by(name: "Bob Smith"), target: question1, target_type: "Question", type: "Vote", message: "John Doe upvoted your question.")
# Notification.create(user: User.find_by(name: "Jane Doe"), target: Answer.find(2), target_type: "Answer", type: "Suggestion", message: "You've been suggested as the best answer for the question 'How to use JavaScript with Rails?'")
