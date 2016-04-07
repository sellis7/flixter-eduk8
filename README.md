## Flixter-EDUK8

An instructor- and student-facing video-based education marketplace (a bit of a Udemy clone), with features such as credit card payment capability (Stripe), user accessibility management and advanced nested and namespace-based database relationships.

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

To navigate the site and interact with the user accessibility features and functionality, I provide the following test accounts to use–
| Email          | password     | type       |
| ------------   | ------------ | -----------|
| teacher1@email.net| 12345678  | Instructor |
| teacher2@email.net| 12345678  | Instructor |
| student1@email.com| 87654321  | Student    |
| student2@email.com| 87654321  | Student    |
_different view permissions for each account is based on authentication of particular user_

Additional Instructor functionality provides for drag-and-drop reorder capability of independent lessons within a section, and entire sections within a course while maintaining the lessons connected.

All user accounts have the capability to create courses, but only the course creator can reorder the course material (sections & lessons). Lessons are only viewable by enrolled users or the course creator.

**Just to note:** All the video material is composed of personal projects and animation shorts I had completed using a variety of techniques and software while I was attending Edinboro University of PA, The School of Visual Arts of NY and Virginia Western Community College of VA. Though they provide no actual instruction, they reveal additional skills I'm capable of. Two of the three uploaded images also show some graphic design work and a portion of a storyboard I had completed. 
