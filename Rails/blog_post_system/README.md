2.7.0 :940 > User
 => User(id: integer, name: string, address: string, created_at: datetime, updated_at: datetime, paid: string, contact: integer) 


2.7.0 :941 > User.class
 => Class 


2.7.0 :951 > User.find(70).class
  User Load (0.9ms)  SELECT "users".* FROM "users" WHERE "users"."id" = $1 LIMIT $2  [["id", 70], ["LIMIT", 1]]
 => User(id: integer, name: string, address: string, created_at: datetime, updated_at: datetime, paid: string, contact: integer) 


2.7.0 :953 > User.find(70).id
  User Load (0.3ms)  SELECT "users".* FROM "users" WHERE "users"."id" = $1 LIMIT $2  [["id", 70], ["LIMIT", 1]]
 => 70 


2.7.0 :1010 > User.find([56,68])
  User Load (0.8ms)  SELECT "users".* FROM "users" WHERE "users"."id" IN ($1, $2)  [["id", 56], ["id", 68]]
 => [#<User id: 56, name: "Pavan", address: "No Address", created_at: "2020-02-13 06:26:34", updated_at: "2020-02-13 06:29:45", paid: "No", contact: 7854789658>, #<User id: 68, name: "Pankaj", address: "No Address", created_at: "2020-02-13 07:02:44", updated_at: "2020-02-13 07:02:44", paid: "No", contact: 7854789658>] 


2.7.0 :1011 > User.find([56,68]).class
  User Load (1.3ms)  SELECT "users".* FROM "users" WHERE "users"."id" IN ($1, $2)  [["id", 56], ["id", 68]]
 => Array 


2.7.0 :1012 > User.find([56,68])[1]
  User Load (1.3ms)  SELECT "users".* FROM "users" WHERE "users"."id" IN ($1, $2)  [["id", 56], ["id", 68]]
 => #<User id: 68, name: "Pankaj", address: "No Address", created_at: "2020-02-13 07:02:44", updated_at: "2020-02-13 07:02:44", paid: "No", contact: 7854789658> 


2.7.0 :999 > User.take.class
  User Load (0.7ms)  SELECT "users".* FROM "users" LIMIT $1  [["LIMIT", 1]]
 => User(id: integer, name: string, address: string, created_at: datetime, updated_at: datetime, paid: string, contact: integer) 


2.7.0 :1000 > User.take.id
  User Load (0.8ms)  SELECT "users".* FROM "users" LIMIT $1  [["LIMIT", 1]]
 => 56 


2.7.0 :1005 > User.take(2)
  User Load (0.7ms)  SELECT "users".* FROM "users" LIMIT $1  [["LIMIT", 2]]
 => [#<User id: 56, name: "Pavan", address: "No Address", created_at: "2020-02-13 06:26:34", updated_at: "2020-02-13 06:29:45", paid: "No", contact: 7854789658>, #<User id: 57, name: "Pankaj", address: "No Address", created_at: "2020-02-13 06:31:44", updated_at: "2020-02-13 06:31:44", paid: "No", contact: 7854789658>] 


2.7.0 :1006 > User.take(2).class
  User Load (0.7ms)  SELECT "users".* FROM "users" LIMIT $1  [["LIMIT", 2]]
 => Array 


2.7.0 :1007 > User.take(2).id
  User Load (0.9ms)  SELECT "users".* FROM "users" LIMIT $1  [["LIMIT", 2]]
Traceback (most recent call last):
        1: from (irb):1007
NoMethodError (undefined method `id' for #<Array:0x000055822f62d930>)


2.7.0 :1013 > User.take([56,68])
Traceback (most recent call last):
        1: from (irb):1013
TypeError (can't convert Array into Integer)


