# Como acessar a api
ip e porta: 198.74.50.215:3000  
* get /user #get all users   
* post /user #create user  
body:{name:string, bio:string}
* get /user/user_id #get single user  
* patch /user/user_id #modify a user  
body:{name:string, bio:string}
* get/user/user_id/todos #get all todos from a user  
* post /user/user_id/todos #create todo  
body:{title:string, description:string, checked:integer}
* get /user/user_id/todos/todo_id #get single todo
* patch /user/user_id/todos/todo_id #modify a todo
body:{title:string, description:string, checked:integer} 
* delete /user/user_id/todos/todo_id #delete a todo  
