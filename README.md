# Flixter

Live site: https://flixter-julian-smith.herokuapp.com/

# About

This two-sided marketplace is a platform for user-generated video lessons. The two-sided component means there is different functionality for the two roles of student and teacher. Users are able to to enroll in and create courses.

## Getting Started

### Accounts

* A user account is required in order to enroll in, view, or create courses. Simply click the `Sign Up` link to get started.
* There is also a sample user account that can be signed into. The username is `flix@example.com`, and the password matches the username exactly.

### Basic Use

* Click on `Flixter` in the navigation bar to return to the home page.
* Click on the `My Dashboard` navigation link to view lists of the the courses you are enrolled in and have created, respectively. This is the quickest way to return to a course later.
* Note that all of the content on this app is free to access. Although there may be priced courses listed, these are just to demonstrate the payment processing capabilites. Priced courses can be accessed using the sample credit card (more details are provided in the next section). 

### Enrolling in a Course

* Click on `See All Courses` to be taken to a list of all courses available for you to sign up for.

![FlixterEnroll1](https://user-images.githubusercontent.com/55506831/88851324-3b730900-d1b2-11ea-9d31-e9212aac08f4.PNG)

* When you find a course that interests you, click on the `More Details` button for that course.
* To view course content, need to be enrolled. For courses listed as free, simply click the `Enroll` button. For other courses, click on the `Pay with Card` button and enter the sample credit card information below (see prior notes about pricing).
  * Number: `4242424242424242`
  * CVC Number: `(Any 3 digits)`
  * Expiration Date: `(Any future date)`
* Courses are listed in sections, and each section contains one or more lessons. Click on the name of the lesson to get started.

### Creating a Course

* Click on the `Build a Course` link in the footer to begin.
* Enter a valid title, description, cost (note that a cost of `0` is valid), and upload an image in the form (this will act as the preview image on the course page), then submit.

![FlixterCreate1](https://user-images.githubusercontent.com/55506831/88496923-46485680-cf84-11ea-90b5-62107350659b.PNG)

* You will be taken to the page for your course. You always have the option of previewing your course content with the `Preview As Student...` button.
  * To return from previewing a lesson as a student, click on the `Administer` button.
  
![Flixter1](https://user-images.githubusercontent.com/55506831/88851321-3ada7280-d1b2-11ea-84e9-90406bf91206.PNG)

#### Sections

* Your course must have at least one section. Each section will house lessons. 
* Create one by clicking `Add a new section...`, enter a valid section title, then submit.
* Once you have more than one section, you can change their order by dragging and dropping section boxes. 

#### Lessons
* To add a lesson, click on the `New Lesson...` button in the section in which you want the course to reside. Enter a valid title and subtitle, upload a lesson video, then submit.
* Once you have multiple courses in a section, you can change their order by dragging and dropping lesson boxes.

## Built With

* [Amazon S3](https://aws.amazon.com/s3/) - Media storage
* [Bootstrap](https://getbootstrap.com/) - Front-end library
* [Heroku](https://www.heroku.com/) - Deployment
* [Ruby on Rails](https://rubyonrails.org/) - Web application framework
* [PostgreSQL](https://www.postgresql.org/) - Database
* [Stripe](https://stripe.com/) - Payment processing
