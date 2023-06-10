<a name="readme-top"></a>

<div align="center">
  <h3><b>Blog App</b></h3>
</div>

# 📗 Table of Contents

- [Capstone-ruby](#capstone-ruby)
- [📗 Table of Contents](#-table-of-contents)
- [📖 \[Blog App\] ](#-Blog App-)
  - [🛠 Built With ](#-built-with-)
    - [Tech Stack ](#tech-stack-)
  - [💻 Getting Started ](#-getting-started-)
    - [Prerequisites](#prerequisites)
    - [Setup](#setup)
    - [Install](#install)
    - [Run tests](#run-tests)
    - [Deployment](#deployment)
  - [👥 Authors ](#-authors-)
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

**BB Simon**

- GitHub: [@githubhandle](https://github.com/BB-Simon) 
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/bb-simon/)
- Twitter: [@twitterhandle](https://twitter.com/bb_s_imon) 


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
