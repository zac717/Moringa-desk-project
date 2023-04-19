# Generate 3 random user IDs
user_ids = (1..3).to_a.shuffle

# Create Tags
# html_tag = Tag.create(name: 'html')
# css_tag = Tag.create(name: 'css')
# react_tag = Tag.create(name: 'react')
# js_tag = Tag.create(name: 'java')
# ruby_tag = Tag.create(name: 'ruby')
# rails_tag = Tag.create(name: 'rails')
# ubuntu_tag = Tag.create(name: 'ubuntu installation')

# Create Questions
# question1 = Question.create(title: 'How to center a div?', description: 'I have a div and I want to center it horizontally and vertically.', user_id: user_ids.pop)
# question1.tags << html_tag
# question1.tags << css_tag

# question2 = Question.create(title: 'What is React?', description: 'I have heard a lot about React, but I am not sure what it is. Can someone explain?', user_id: user_ids.pop)
# question2.tags << react_tag
# question2.tags << js_tag

# question3 = Question.create(title: 'How to install Ruby on Rails on Ubuntu?', description: 'I want to develop a Rails app on my Ubuntu machine. How can I install Ruby on Rails?', user_id: user_ids.pop)
# question3.tags << ubuntu_tag
# question3.tags << ruby_tag
# question3.tags << rails_tag

# question4 =Question.create(title: 'What is the difference between margin and padding in CSS?', description: 'I am new to CSS and I am confused about the difference between margin and padding. Can someone explain?', user_id: user_ids.pop)
# question4.tags << css_tag

# question5 = Question.create(title: 'What are some best practices for writing clean code in Ruby?', description: 'I want to improve my Ruby coding skills and write cleaner, more maintainable code. What are some best practices to follow?', user_id: user_ids.pop)
# question5.tags << ruby_tag

# question6 = Question.create(title: 'How can I deploy a Rails app to Heroku?', description: 'I have built a Rails app and I want to deploy it to Heroku. What is the process for doing this?', user_id: user_ids.pop)
# question6.tags << rails_tag

# Create some questions
# Question.create(title: "Question 1 title", description: "Question 1 description", user_id: 1)
# Question.create(title: "Question 2 title", description: "Question 2 description", user_id: 2)
# Question.create(title: "Question 3 title", description: "Question 3 description", user_id: 1)


# Create Answers
# answer1a= Answer.create(description: 'You can center a div using the "margin: auto;" CSS property.', question_id: question1.id, user_id: user_ids.pop)
# answer1b= Answer.create(description: 'Another way to center a div is to use "display: flex; justify-content: center; align-items: center;" on the parent element.', question_id: question1.id, user_id: user_ids.pop)

# answer2a= Answer.create(description: 'React is a JavaScript library for building user interfaces.', question_id: question2.id, user_id: user_ids.pop)
# answer2b= Answer.create(description: 'React uses a declarative approach to building UIs, where you describe what you want the UI to look like, and React takes care of updating the DOM.', question_id: question2.id, user_id: user_ids.pop)

# answer3a= Answer.create(description: 'You can install Ruby on Rails on Ubuntu using the following command: "sudo apt-get install ruby-full build-essential zlib1g-dev".', question_id: question3.id, user_id: user_ids.pop)
# answer3b= Answer.create(description: 'After installing Ruby on Rails, you can create a new Rails app using the "rails new" command.', question_id: question3.id, user_id: user_ids.pop)

# answer4a= Answer.create(description: 'Margin is the space between an element and other elements, while padding is the space between an element and its content.', question_id: question4.id, user_id: user_ids.pop)
# answer4b= Answer.create(description: 'Margins are used to create space between elements, while padding is used to create space within an element.', question_id: question4.id, user_id: user_ids.pop)

# answer5a= Answer.create(description: 'Some best practices for writing clean code in Ruby include following the DRY (Don\'t Repeat Yourself) principle, using descriptive variable and method names, and keeping methods short and focused.', question_id: question5.id, user_id: user_ids.pop)
# answer5b= Answer.create(description: 'Other best practices include writing tests to ensure code quality, using meaningful comments sparingly, and avoiding unnecessary complexity.', question_id: question5.id, user_id: user_ids.pop)

# answer6a= Answer.create(description: 'To deploy a Rails app to Heroku, you will need to sign up for a Heroku account, install the Heroku CLI, create a new Heroku app, and push your code to the Heroku Git repository.', question_id: question6.id, user_id: user_ids.pop)
# answer6b= Answer.create(description: 'You can then run database migrations on the Heroku app, and your app should be live and accessible at the URL provided by Heroku.', question_id: question6.id, user_id: user_ids.pop)

# Create some answers
# Answer.create(question_id: 1, description: "Answer 1 description", user_id: 1)
# Answer.create(question_id: 1, description: "Answer 2 description", user_id: 2)
# Answer.create(question_id: 2, description: "Answer 3 description", user_id: 1)


# Create Votes
# Vote.create(user_id: user_ids.sample, answer_id: answer1a.id, value: 1)
# Vote.create(user_id: user_ids.sample, answer_id: answer1b.id, value: -1)

# Vote.create(user_id: user_ids.sample,answer_id: answer2a.id, value: 1)
# Vote.create(user_id: user_ids.sample, answer_id: answer2b.id, value: 1)

# Vote.create(user_id: user_ids.sample,answer_id: answer3a.id, value: 1)
# Vote.create(user_id: user_ids.sample,answer_id: answer3b.id, value: -1)

# Vote.create(user_id: user_ids.sample,answer_id: answer4a.id, value: 1)
# Vote.create(user_id: user_ids.sample,answer_id: answer4b.id, value: 1)

# Vote.create(user_id: user_ids.sample,answer_id: answer5a.id, value: 1)
# Vote.create(user_id: user_ids.sample,answer_id: answer5b.id, value: 1)

# Vote.create(user_id: user_ids.sample, answer_id:answer6a.id, value: 1)
# Vote.create(user_id: user_ids.sample, answer_id: answer6b.id, value: 1)
# Create some votes
Vote.create(user_id: 1, answer_id: 2, value: 1)
Vote.create(user_id: 2, answer_id: 1, value: 1)
Vote.create(user_id: 3, answer_id: 3, value: 1)




# Create Notifications


# Notification.create(user_id: user_ids.sample, target_id: Question.find_by(id: 1), target_type: "Question", type:"NewQuestion" )
# Notification.create(user_id: user_ids.sample, target_id: Answer.find_by(id: 1), target_type: "Answer", type: "Suggestion")

# Create some notifications
 

# create_notifications.rb

# user_ids = User.pluck(:id)

# Create notifications with targets
# Notification.create(user_id: 1, type: "NewQuestion",  target_type: "Question")
# Notification.create(user_id: 2, type: "Suggestion",  target_type: "Answer")

# Create notifications without targets
# Notification.create(user_id: user_ids.sample, type: "SystemNotification",  target_type: nil)
# Notification.create(user_id: user_ids.sample, type: "MessageNotification", target_type: nil)
