# Modelling a Bakery 
 
## Summary  
*Recode Bakery* is a bakery specializing in delicious cookies.  The bakery is growing rapidly, and they need some software to help them manage their kitchen.  Our job is to build a program that will help them manage the bakery.

Here are a few user stories to help get us started:
    
- As a baker, I want to make different types of cookies (peanut butter, chocolate chip, etc.).
- As a baker, I want to place batches of cookies in an oven.
- As a baker, I want to know when a batch of cookies is ready to be removed from the oven.

### Part 1A: Understand the Problem and Design the Structure
For this exercise, we are starting from zero.  Think about this problem critically before we should begin to write code and describe in plain English how to design the program.  


Consider these questions to implement a bakery software:
        
- What are essential classes?
- What attributes will each class have?
- What interface will each class provide?
- How will the classes interact with each other?
- Does inheritance make sense?


### Part 1B:  Implement a Minimum Viable Product
With some idea of what components will make up our program, we'll now start writing some code.  We'll build a *minimum viable product* (MVP) with no fancy features, just enough to accomplish what absolutely needs to get done.

Based on the user stories in the *Summary*, what would an MVP look like?  
- We should be able to make cookies.
- We should be able to move cookies into and out of an oven.
- If cookies are in an oven, we should be able to bake them and check their status.
- When you start the oven, you should ask how many seconds do you want to bake for and then bake for that amount of time.

### Part 2:  Additional Features
Our MVP was a success, so we're going to expand the program, adding some new features—and testing them, as always.  We should be sure to implement the following:

- We can make multiple types of cookies, each with a different baking time and circumference.
- Instead of putting Cookies directly in the oven, maybe we would want to use a tray for hygiene purposes. Each tray should be able to hold a certain number of cookies based on the cookie's circumference (size).
- Cookies have four possible status values depending on how long they've been baked: `:doughy`, `:almost_ready`, `:ready`, and `:burned`

