## Flixter-EDUK8

An instructor- and student-facing video-based education marketplace (a bit of a Udemy clone), with features such as credit card payment capability (using Stripe), user accessibility management and advanced nested and namespace-based database relationships. See the app live via Heroku [here](https://se-flixter-eduk8.herokuapp.com).

##### Mostly tutorial-generated build, with the following aspects independently incorporated:  
* Establishing app within Rails and using PostgreSQL database
* Adding Devise user authentication and Bootstrap functionality
* Top-Nav structure and style
* Image upload capability
* Enrollment accessibility to lessons
* Structure and styling customization, to suit personal taste

##### Additional technologies utilized:  
* Ruby and Rails
* JQuery UI (sortable)
* SCSS
* Git, GitHub, and Heroku for the production platform
* MVC design pattern
* RESTful routing sans scaffolding
* Image & video upload features using:
 * CarrierWave-AWS & MiniMagick
 * AWS Amazon S3 & Fog
 * VideoJS

<hr />
To navigate the site and interact with the user accessibility features and functionality, I provide the following test accounts to use–

Email Address | Password | User Type       
----- | -------- | -----
teacher1@email.net | 12345678 | Instructor 
teacher2@email.net | 12345678 | Instructor 
student1@email.com | 87654321 | Student    
student2@email.com | 87654321 | Student    
_different view permissions for each account depends on how a particular user is authenticated_

All user accounts have the capability to create courses, but only the course creator can reorder the course material (sections & lessons). Lessons are only viewable by enrolled users or the course creator. Additional Instructor functionality allows for drag-and-drop reordering of lessons within a section, and entire sections within a course while maintaining the lessons connected.
<hr />
**Just to note:** All the videos are personal projects and animation shorts I created using a variety of techniques and software while I was attending Edinboro University of PA, The School of Visual Arts of NY and Virginia Western Community College of VA. Though they provide no actual instruction content, they reveal additional skills I'm capable of. Two of the three uploaded images also show some graphic design work and a portion of a storyboard I had completed. 
