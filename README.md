<a name="readme-top"></a>

<div align="center">
  <h3><b>Blog App</b></h3>
</div>

# 📗 Table of Contents

- [📗 Table of Contents](#-table-of-contents)
- [📖 \[Blog App\] ](#-blog-app-)
  - [🛠 Built With ](#-built-with-)
    - [Tech Stack ](#tech-stack-)
    - [Key Features ](#key-features-)
  - [💻 Getting Started ](#-getting-started-)
    - [Prerequisites](#prerequisites)
    - [Setup](#setup)
    - [Install](#install)
    - [Run the project](#run-the-project)
    - [Run tests](#run-tests)
  - [👤 Author ](#-author-)
  - [🔭 Future Features ](#-future-features-)
  - [🤝 Contributing ](#-contributing-)
  - [⭐️ Show your support ](#️-show-your-support-)
  - [🙏 Acknowledgments ](#-acknowledgments-)
  - [📝 License ](#-license-)

<!-- PROJECT DESCRIPTION -->

# 📖 [Blog App] <a name="about-project"></a>

**The Blog app** will be a classic example of a blog website which will be a fully functional website that will show the list of posts and empower readers to interact with them by adding comments and liking posts.

## 🛠 Built With <a name="built-with-Ruby"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
<summary>Technologies</summary>
  <ul>
    <li><a href="https://www.ruby-lang.org/en/">Ruby</a></li>
    <li><a href="https://rubyonrails.org/">Ruby on Rails</a></li>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- Features -->

### Key Features <a name="key-features"></a>
- [x] Creating data model
  - Create User model
  - Create Post model
  - Create Comment model
  - Create Like model
- [x] Creating migreation data schema for users, posts, comments and likes.
- [x] Create model classes for all entities as shown in the ERD diagram.
- [x] Set up associations between models.
  - Remember that author_id column in posts table should be the foreign_key for the users table.
- [x] Models should include some additional methods.
  - Users
    - A method that returns the 3 most recent posts for a given user.
  - Posts
    - A method that updates the posts counter for a user.
    - A method which returns the 5 most recent comments for a given post.
  - Comments
    - A method that updates the comments counter for a post.
  - Likes
    - A method that updates the likes counter for a post.

- [x] Add the following validations:
    - For the User model:
      - Name must not be blank.
      - PostsCounter must be an integer greater than or equal to zero.
    - For the Post mode
      - Title must not be blank.
      - Title must not exceed 250 characters.
      - CommentsCounter must be an integer greater than or equal to zero.
      - LikesCounter must be an integer greater than or equal to zero.

- [x] Add unit specs for all of your models' methods and validations.
- [x] Add users's index&show and user's posts's index&show routes
- [x] For each URL you should create:
    - A route.
    - An action in the correct controller.
    - A view file.
- [x] View files should include only placeholders written in plain HTML, e.g:
    - Here is a list of posts for a given user
- [x] Make sure that you added code to handle only the 4 required URLs.
- [x] Add RSpec as a gem to your project.
- [x] Create a Request spec file for all your controllers.
- [x] Make sure that for each action you check:
    - If response status was correct.
    - If a correct template was rendered.
    - If the response body includes correct placeholder text.
- [x] Implement the design from the sneak peek wireframes:
    - Styling is nice to have but focus on making sure everything functions first. (Note: Ignore login logic, you would be using Devise in coming milestone)
    - Use methods that you have created in the Blog App - processing data in models.

- [x] Create a method called current_user in your ApplicationController to make current user data available to all controllers.
    - It will return the first user from the database.
- [x] Create forms to perform the following functions:
    - Creates a Post on behalf of the current_user (use the method that you created in your ApplicationController).
    - Create a comment on behalf of the current_user (use the method that you created in your ApplicationController).
- [x] Allow Users to add likes to Posts.
- [x] Make sure that the N+1 problem is solved when fetching all posts and their comments for a user.
- [x] Use Capybara to write integration tests for each view in your project
- [x] Remove current_user method in ApplicationController, devise will provide us with one.
- [x] Install and setup devise.
      - Can register a new user.
      - User logs in with a combination of email and password.
      - Hashed password should be stored in the database.
      - Ask for confirmation of email.
      - Can reset password.
- [x] Modify the views in devise for registration and login to match the wireframes from the Sneak Peek and your styling.
- [x] Install CanCanCan in your project.
- [x] Add a role column to the users table. Remember to use a migration for this.
- [x] A user can delete a post if it is theirs or if they have an admin role (column role has value "admin"). Use CanCanCan for this authorization.
    - For that you need to implement the post deleting functionality. Add the "Delete" button to the view and make sure that only authorized users can see it.
- [x] A user can delete a comment if it is theirs or if they have an admin role (column role has value "admin"). Use CanCanCan for this authorization.
    - For that you need to implement the comment deleting functionality. Add the "Delete" button to the view and make sure that only authorized users can see it.
- [x] Create an API endpoint to list all posts for a user.
- [x] Create an API endpoint to list all comments for a user's post.
- [x] Create an API endpoint to add a comment to a post. Remember that the owner of the comment is the user that makes it; it should not be set by passing a parameter.
- [x] Your API endpoints should receive JSON and respond JSON as well.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need to have the following in local computer:

- [ ] install Ruby
- [ ] install Ruby on Rails
- [ ] install PostgreSQL

### Setup

Clone this repository to your desired folder:

- [ ] Open terminal
- [ ] git clone https://github.com/BB-Simon/blog-app.git
- [ ] cd blog-app
  

### Install

Install this project with:

 - [ ] bundle install


### Run the project

To run the project, run the following command:

- [ ] rails server


### Run tests

To run tests, run the following command:

- [ ] Rspec spec

<!-- AUTHORS -->

## 👤 Author <a name="authors"></a>

👨‍🚀 **BB Simon**

- GitHub: [@githubhandle](https://github.com/BB-Simon) 
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/bb-simon/)
- Twitter: [@twitterhandle](https://twitter.com/bb_s_imon) 

👨‍🚀 **M Nisar Ali**

- GitHub: [@MNisarAli](https://github.com/MNisarAli)
- Gmail: [@dr.nisaralig@gmail.com](mailto:dr.nisaralig@gmail.com)
- LinkedIn: [@Muhammad Nisar Ali](https://www.linkedin.com/in/muhammad-nisar-ali)


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

- [ ] **[Setup and controllers]**
- [ ] **[Controllers specs]**
- [ ] **[Views]**
- [ ] **[Forms]**
- [ ] **[Add Devise]**


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/BB-Simon/blog-app/issues).


<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

- Give a ⭐️ if you like this project!


<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

-  I would like to thank [Microverse](https://www.microverse.org/) for giving me this opportunity to learn and grow as a developer by providing me with blog app idea.


<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT licensed](./LICENSE).

<p align="right">(<a href="#readme-top">back to top</a>)</p>
