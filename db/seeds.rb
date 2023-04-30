# Generate 3 random user IDs
#user_ids = (1..3).to_a.shuffle

 #Create Tags
 html_tag = Tag.create(name: 'html')
 css_tag = Tag.create(name: 'css')
 react_tag = Tag.create(name: 'react')
 js_tag = Tag.create(name: 'java')
 ruby_tag = Tag.create(name: 'ruby')
 rails_tag = Tag.create(name: 'rails')
 ubuntu_tag = Tag.create(name: 'ubuntu installation')

#Create Questions
question1 = Question.create(title: 'How to center a div?', description: 'I have a div and I want to center it horizontally and vertically.', user_id: 1)
question1.tags << html_tag
question1.tags << css_tag

question2 = Question.create(title: 'What is React?', description: 'I have heard a lot about React, but I am not sure what it is. Can someone explain?', user_id: 2)
question2.tags << react_tag
question2.tags << js_tag

question3 = Question.create(title: 'How to install Ruby on Rails on Ubuntu?', description: 'I want to develop a Rails app on my Ubuntu machine. How can I install Ruby on Rails?', user_id: 3)
question3.tags << ubuntu_tag
question3.tags << ruby_tag
question3.tags << rails_tag

question4 =Question.create(title: 'What is the difference between margin and padding in CSS?', description: 'I am new to CSS and I am confused about the difference between margin and padding. Can someone explain?', user_id: 1)
question4.tags << css_tag

question5 = Question.create(title: 'What are some best practices for writing clean code in Ruby?', description: 'I want to improve my Ruby coding skills and write cleaner, more maintainable code. What are some best practices to follow?', user_id: 2)
question5.tags << ruby_tag

question6 = Question.create(title: 'How can I deploy a Rails app to Heroku?', description: 'I have built a Rails app and I want to deploy it to Heroku. What is the process for doing this?', user_id: 3)
question6.tags << rails_tag

# Create some questions
# Question.create(title: "Question 1 title", description: "Question 1 description", user_id: 1)
# Question.create(title: "Question 2 title", description: "Question 2 description", user_id: 2)
# Question.create(title: "Question 3 title", description: "Question 3 description", user_id: 1)


 #Create Answers
 answer1a= Answer.create(question_id: 1, description: 'You can center a div using the "margin: auto;" CSS property.', user_id: 1)
 answer1b= Answer.create(question_id: 1, description: 'Another way to center a div is to use "display: flex; justify-content: center; align-items: center;" on the parent element.', user_id: 1)

 answer2a= Answer.create(question_id: 2, description: 'React is a JavaScript library for building user interfaces.', user_id: 2)
 answer2b= Answer.create(question_id: 2, description: 'React uses a declarative approach to building UIs, where you describe what you want the UI to look like, and React takes care of updating the DOM.', user_id: 2)

 answer3a= Answer.create(question_id: 3, description: 'You can install Ruby on Rails on Ubuntu using the following command: "sudo apt-get install ruby-full build-essential zlib1g-dev".', user_id: 3)
 answer3b= Answer.create(question_id: 3, description: 'After installing Ruby on Rails, you can create a new Rails app using the "rails new" command.', user_id: 3)

 answer4a= Answer.create(question_id: 4, description: 'Margin is the space between an element and other elements, while padding is the space between an element and its content.', user_id: 1)
 answer4b= Answer.create(question_id: 4, description: 'Margins are used to create space between elements, while padding is used to create space within an element.', user_id: 1)

 answer5a= Answer.create(question_id: 5, description: 'Some best practices for writing clean code in Ruby include following the DRY (Don\'t Repeat Yourself) principle, using descriptive variable and method names, and keeping methods short and focused.', user_id: 2)
 answer5b= Answer.create(question_id: 5, description: 'Other best practices include writing tests to ensure code quality, using meaningful comments sparingly, and avoiding unnecessary complexity.', user_id: 2)

 answer6a= Answer.create(question_id: 6, description: 'To deploy a Rails app to Heroku, you will need to sign up for a Heroku account, install the Heroku CLI, create a new Heroku app, and push your code to the Heroku Git repository.', user_id:3)
 answer6b= Answer.create(question_id: 6, description: 'You can then run database migrations on the Heroku app, and your app should be live and accessible at the URL provided by Heroku.', user_id: 3)



# Create some targets


Target.create(targetable_type: "Answer", targetable_id: 1)
Target.create(targetable_type: "Question", targetable_id: 2)





# Create Votes
Vote.create(user_id: 1, answer_id: 1, value: 1)
Vote.create(user_id: 1, answer_id: 1, value: 1)

Vote.create(user_id: 2,answer_id: 2, value: 1)
Vote.create(user_id: 2,answer_id:2, value: 1)

Vote.create(user_id: 3,answer_id: 3, value: 1)
Vote.create(user_id: 3,answer_id: 3, value: 1)

Vote.create(user_id: 1,answer_id: 4, value: 1)
Vote.create(user_id: 1,answer_id: 4, value: 1)

Vote.create(user_id: 2,answer_id: 5, value: 1)
Vote.create(user_id: 2,answer_id: 5, value: 1)

Vote.create(user_id: 3, answer_id: 6, value: 1)
Vote.create(user_id: 3, answer_id: 6, value: 1)

# Create some votes
# Vote.create(user_id: 1, answer_id: 2, value: 1)
# Vote.create(user_id: 2, answer_id: 1, value: 1)
# Vote.create(user_id: 3, answer_id: 3, value: 1)




# Create Notifications


Notification.create(user_id: 1,type:"question", target_id: 1, target_type: "Question", message: "New question posted")
Notification.create(user_id: 1,type:"answer",  target_id: 1, target_type: "Answer", message: "New answer posted")



# Notification.create(user_id: user_ids.sample, target_id: Question.find_by(id: 1), target_type: "Question", message:"notification")
# Notification.create(user_id: user_ids.sample, target_id: Answer.find_by(id: 1), target_type: "Answer", message:"notification")

# Create some notifications
 

# create_notifications.rb


# Create notifications with targets
# Notification.create(user_id: 1, type: "NewQuestion",  target_type: "Question")
# Notification.create(user_id: 2, type: "Suggestion",  target_type: "Answer")


