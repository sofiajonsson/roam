
# Welcome to Roam!
Created by: Mera Stackhouse and Sofia Jonsson
## What is Roam?
Roam was created to be a travel focused social media site. Users can signup/login and browse posts. They are able to browse other users and follow and unfollow them. They will have a personalized feed, accessed through the navigation bar, based on who they follow and their posts.

## Configuration
- Clone the repository to your computer
- Navigate to the parent folder, `roam`
- Run `bundle install`, `rails db:migrate`, `rails db:seed`
- Run `rails s` in your server to start your local server
- Open `http://localhost:3000/` in your browser
- Also available on: https://roam-travel-app.herokuapp.com/

## Project Requirements
Build a Rails app that:

1. Has at least five models. Of these, there must be at least one relationship between your models.

2. Has some methods in your models. These are to be used to better extract data from your tables.

3. Doesn't use JavaScript. JavaScript will be used in the next Module.

4. Accesses a Sqlite3 database using ActiveRecord.

5. Allows the user to perform CRUD operations using forms in the browser. Not all of your models must use all 4 crud operations, but you must have given the user the ability to use each of the 4 of them at some place in your app.

6. Uses MVC. Your work should be split up appropriately in the models, views, and controllers that you write.


## Database Diagram

![alt text](../app/assets/images/Models.png)

### Thank you to:
https://dev.to/knheidorn/rails-crash-course-building-follower-following-relationship-4kjl

https://startbootstrap.com/snippets/portfolio-three-column/

https://fontawesome.com/v4.7.0/icons/

https://startbootstrap.com/snippets/portfolio-item/

https://www.bootdey.com/snippets/view/Simple-Comment-panel#html

https://www.wikipedia.org ==> Used for random bits of texts in photo captions


### License
MIT License
Copyright (c) 2019 Mera Stackhouse and Sofia Jonsson

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
