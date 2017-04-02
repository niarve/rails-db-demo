# Rake Demo CSE3901
###### Building a db in Ruby on Rails using Rake
---

#### Create a rails app
```sh
  rails new app
  cd app
```

---

#### Create a database
```sh
  rake db:create
```
Creates new files:
> db/development.sqlite3

> db/test.sqlite3

These two files hold configurations for a different database environment (development and test)

---

#### Migration
However, we still need a db/schema.rb file. To create one try:
```sh
  rake db:migrate
```
Now that we have a db/schema.rb file and two sqlite3 environments, we can begin to create a database. In order to cover more advance topics we are going to scaffold a small database example to save time.

---

#### Rails Scaffolding
```sh
    $ rails generate scaffold Employees name:string ssn:string department:string salary:integer
    $ rails server
```
To visit this database go to localhost:3000/employees in your browser! You can update the database from here, any changes, once submitted, will immediately log a sql query in the terminal.

---

#### Seeding
Once the app is running you can easily update the database from the UI and all changes will have be saved. However if you need to add many people at once, continuously adding them through the UI can be tedious. Luckily we can use rake db:seed to migrate many values at once.

Copy the contents below into your db/seeds.rb file
```sh
Employee.create([
  {
    name: 'Sean Miller',
    ssn: '123456789',
    department: 'Accounting',
    salary: '89000'
  },
  {
    name: 'Cameron Zengel',
    ssn: '123456790',
    department: 'Human Resources',
    salary: '66000'
  },
  {
    name: 'Brutus Buckeye',
    ssn: '123456791',
    department: 'Executive Board',
    salary: '120000'
  }
])

```

Now create a migration, then migrate the changes by running:
```sh
  $ rake db:seed
  $ rake db:migrate
  $ rails server
```

Notice the changes from your seeds file were applied to the database at localhost:3000/employees
---

#### Setup
The only problem with rake db:seed is that every time you run it, it will reapply all changes. This will cause duplicate database entrities if you don't update your db/seeds.rb file correctly. Luckily, rake comes equipped with a setup command, that will reload the database entirely then run rake db:seed
```sh
    $ rake db:setup
```

Notice no duplicate data entries! For this reason, I highly advise using the setup task rather then seed whenever altering your db/seeds.rb file!

---
