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


Note:- find will generate exception if no matching record is found.



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


2.7.0 :067 > User.first.class
  User Load (0.6ms)  SELECT "users".* FROM "users" ORDER BY "users"."id" ASC LIMIT $1  [["LIMIT", 1]]
 => User(id: integer, name: string, address: string, created_at: datetime, updated_at: datetime, paid: string, contact: integer) 


2.7.0 :071 > User.first.id
  User Load (1.1ms)  SELECT "users".* FROM "users" ORDER BY "users"."id" ASC LIMIT $1  [["LIMIT", 1]]
 => 56 


2.7.0 :076 > User.first(3)
  User Load (1.2ms)  SELECT "users".* FROM "users" ORDER BY "users"."id" ASC LIMIT $1  [["LIMIT", 3]]
 => [#<User id: 56, name: "Pavan", address: "No Address", created_at: "2020-02-13 06:26:34", updated_at: "2020-02-13 06:29:45", paid: "No", contact: 7854789658>, #<User id: 57, name: "Pankaj", address: "No Address", created_at: "2020-02-13 06:31:44", updated_at: "2020-02-13 06:31:44", paid: "No", contact: 7854789658>, #<User id: 59, name: "Pankaj", address: "No Address", created_at: "2020-02-13 06:47:21", updated_at: "2020-02-13 06:47:21", paid: "No", contact: 7854789658>] 


2.7.0 :077 > User.first(3).class
  User Load (1.4ms)  SELECT "users".* FROM "users" ORDER BY "users"."id" ASC LIMIT $1  [["LIMIT", 3]]
 => Array 


2.7.0 :078 > User.first(3)[1]
  User Load (1.0ms)  SELECT "users".* FROM "users" ORDER BY "users"."id" ASC LIMIT $1  [["LIMIT", 3]]
 => #<User id: 57, name: "Pankaj", address: "No Address", created_at: "2020-02-13 06:31:44", updated_at: "2020-02-13 06:31:44", paid: "No", contact: 7854789658> 


Note:- first! is same like first only difference is first! generates exception if no matching record is found.


2.7.0 :159 > User.last
  User Load (1.4ms)  SELECT "users".* FROM "users" ORDER BY "users"."id" DESC LIMIT $1  [["LIMIT", 1]]
 => #<User id: 71, name: "Pankaj", address: "No Address", created_at: "2020-02-13 07:03:17", updated_at: "2020-02-13 07:03:17", paid: "No", contact: 7854789658> 


2.7.0 :163 > User.last.class
  User Load (1.2ms)  SELECT "users".* FROM "users" ORDER BY "users"."id" DESC LIMIT $1  [["LIMIT", 1]]
 => User(id: integer, name: string, address: string, created_at: datetime, updated_at: datetime, paid: string, contact: integer) 


2.7.0 :164 > User.last.id
  User Load (0.7ms)  SELECT "users".* FROM "users" ORDER BY "users"."id" DESC LIMIT $1  [["LIMIT", 1]]
 => 71 


2.7.0 :165 > User.last.where(id: 71)
  User Load (0.8ms)  SELECT "users".* FROM "users" ORDER BY "users"."id" DESC LIMIT $1  [["LIMIT", 1]]
Traceback (most recent call last):
        1: from (irb):165
NoMethodError (undefined method `where' for #<User:0x00007f74d892c238>)
Did you mean?  when



2.7.0 :193 > User.last(2)
  User Load (0.7ms)  SELECT "users".* FROM "users" ORDER BY "users"."id" DESC LIMIT $1  [["LIMIT", 2]]
 => [#<User id: 70, name: "Pankaj", address: "No Address", created_at: "2020-02-13 07:03:07", updated_at: "2020-02-13 07:03:07", paid: "No", contact: 7854789658>, #<User id: 71, name: "Pankaj", address: "No Address", created_at: "2020-02-13 07:03:17", updated_at: "2020-02-13 07:03:17", paid: "No", contact: 7854789658>] 


2.7.0 :194 > User.last(2).class
  User Load (1.1ms)  SELECT "users".* FROM "users" ORDER BY "users"."id" DESC LIMIT $1  [["LIMIT", 2]]
 => Array 


2.7.0 :195 > User.last(2)[1]
  User Load (0.8ms)  SELECT "users".* FROM "users" ORDER BY "users"."id" DESC LIMIT $1  [["LIMIT", 2]]
 => #<User id: 71, name: "Pankaj", address: "No Address", created_at: "2020-02-13 07:03:17", updated_at: "2020-02-13 07:03:17", paid: "No", contact: 7854789658> 


2.7.0 :196 > User.last(2)[1].class
  User Load (0.7ms)  SELECT "users".* FROM "users" ORDER BY "users"."id" DESC LIMIT $1  [["LIMIT", 2]]
 => User(id: integer, name: string, address: string, created_at: datetime, updated_at: datetime, paid: string, contact: integer) 


2.7.0 :197 > User.last(2)[1].id
  User Load (0.6ms)  SELECT "users".* FROM "users" ORDER BY "users"."id" DESC LIMIT $1  [["LIMIT", 2]]
 => 71 


2.7.0 :222 > User.order(:name)
  User Load (0.7ms)  SELECT "users".* FROM "users" ORDER BY "users"."name" ASC LIMIT $1  [["LIMIT", 11]]
 => #<ActiveRecord::Relation [#<User id: 71, name: "Pankaj", address: "No Address", created_at: "2020-02-13 07:03:17", updated_at: "2020-02-13 07:03:17", paid: "No", contact: 7854789658>, #<User id: 57, name: "Pankaj", address: "No Address", created_at: "2020-02-13 06:31:44", updated_at: "2020-02-13 06:31:44", paid: "No", contact: 7854789658>, #<User id: 59, name: "Pankaj", address: "No Address", created_at: "2020-02-13 06:47:21", updated_at: "2020-02-13 06:47:21", paid: "No", contact: 7854789658>, #<User id: 60, name: "Pankaj", address: "No Address", created_at: "2020-02-13 06:47:34", updated_at: "2020-02-13 06:47:34", paid: "No", contact: 7854789658>, #<User id: 61, name: "Pankaj", address: "No Address", created_at: "2020-02-13 06:50:22", updated_at: "2020-02-13 06:50:22", paid: "No", contact: 7854789658>, #<User id: 62, name: "Pankaj", address: "No Address", created_at: "2020-02-13 06:51:35", updated_at: "2020-02-13 06:51:35", paid: "No", contact: 7854789658>, #<User id: 63, name: "Pankaj", address: "No Address", created_at: "2020-02-13 06:53:58", updated_at: "2020-02-13 06:53:58", paid: "No", contact: 7854789658>, #<User id: 64, name: "Pankaj", address: "No Address", created_at: "2020-02-13 06:54:36", updated_at: "2020-02-13 06:54:36", paid: "No", contact: 7854789658>, #<User id: 65, name: "Pankaj", address: "No Address", created_at: "2020-02-13 07:01:52", updated_at: "2020-02-13 07:01:52", paid: "No", contact: 7854789658>, #<User id: 66, name: "Pankaj", address: "No Address", created_at: "2020-02-13 07:02:19", updated_at: "2020-02-13 07:02:19", paid: "No", contact: 7854789658>, ...]> 


2.7.0 :223 > User.order(:name).class
 => User::ActiveRecord_Relation 


2.7.0 :224 > User.order(:name).where(name: "Pavan")
  User Load (1.2ms)  SELECT "users".* FROM "users" WHERE "users"."name" = $1 ORDER BY "users"."name" ASC LIMIT $2  [["name", "Pavan"], ["LIMIT", 11]]
 => #<ActiveRecord::Relation [#<User id: 56, name: "Pavan", address: "No Address", created_at: "2020-02-13 06:26:34", updated_at: "2020-02-13 06:29:45", paid: "No", contact: 7854789658>]> 


2.7.0 :225 > User.order(:name).where(name: "Pavan").class
 => User::ActiveRecord_Relation 


2.7.0 :226 > User.order(:name).where(name: "Pavan").last
  User Load (0.7ms)  SELECT "users".* FROM "users" WHERE "users"."name" = $1 ORDER BY "users"."name" DESC LIMIT $2  [["name", "Pavan"], ["LIMIT", 1]]
 => #<User id: 56, name: "Pavan", address: "No Address", created_at: "2020-02-13 06:26:34", updated_at: "2020-02-13 06:29:45", paid: "No", contact: 7854789658> 


2.7.0 :227 > User.order(:name).where(name: "Pavan").last.class
  User Load (0.9ms)  SELECT "users".* FROM "users" WHERE "users"."name" = $1 ORDER BY "users"."name" DESC LIMIT $2  [["name", "Pavan"], ["LIMIT", 1]]
 => User(id: integer, name: string, address: string, created_at: datetime, updated_at: datetime, paid: string, contact: integer) 


2.7.0 :228 > User.order(:name).where(name: "Pavan").last.id
  User Load (1.0ms)  SELECT "users".* FROM "users" WHERE "users"."name" = $1 ORDER BY "users"."name" DESC LIMIT $2  [["name", "Pavan"], ["LIMIT", 1]]
 => 56 









2.7.0 :087 > User.order(:name)
  User Load (1.3ms)  SELECT "users".* FROM "users" ORDER BY "users"."name" ASC LIMIT $1  [["LIMIT", 11]]
 => #<ActiveRecord::Relation [#<User id: 71, name: "Pankaj", address: "No Address", created_at: "2020-02-13 07:03:17", updated_at: "2020-02-13 07:03:17", paid: "No", contact: 7854789658>, #<User id: 57, name: "Pankaj", address: "No Address", created_at: "2020-02-13 06:31:44", updated_at: "2020-02-13 06:31:44", paid: "No", contact: 7854789658>, #<User id: 59, name: "Pankaj", address: "No Address", created_at: "2020-02-13 06:47:21", updated_at: "2020-02-13 06:47:21", paid: "No", contact: 7854789658>, #<User id: 60, name: "Pankaj", address: "No Address", created_at: "2020-02-13 06:47:34", updated_at: "2020-02-13 06:47:34", paid: "No", contact: 7854789658>, #<User id: 61, name: "Pankaj", address: "No Address", created_at: "2020-02-13 06:50:22", updated_at: "2020-02-13 06:50:22", paid: "No", contact: 7854789658>, #<User id: 62, name: "Pankaj", address: "No Address", created_at: "2020-02-13 06:51:35", updated_at: "2020-02-13 06:51:35", paid: "No", contact: 7854789658>, #<User id: 63, name: "Pankaj", address: "No Address", created_at: "2020-02-13 06:53:58", updated_at: "2020-02-13 06:53:58", paid: "No", contact: 7854789658>, #<User id: 64, name: "Pankaj", address: "No Address", created_at: "2020-02-13 06:54:36", updated_at: "2020-02-13 06:54:36", paid: "No", contact: 7854789658>, #<User id: 65, name: "Pankaj", address: "No Address", created_at: "2020-02-13 07:01:52", updated_at: "2020-02-13 07:01:52", paid: "No", contact: 7854789658>, #<User id: 66, name: "Pankaj", address: "No Address", created_at: "2020-02-13 07:02:19", updated_at: "2020-02-13 07:02:19", paid: "No", contact: 7854789658>, ...]> 


2.7.0 :091 > User.order(:name).class
 => User::ActiveRecord_Relation 


2.7.0 :092 > User.order(:name)[1]
  User Load (1.4ms)  SELECT "users".* FROM "users" ORDER BY "users"."name" ASC
 => #<User id: 57, name: "Pankaj", address: "No Address", created_at: "2020-02-13 06:31:44", updated_at: "2020-02-13 06:31:44", paid: "No", contact: 7854789658> 


2.7.0 :094 > User.order(:name)[1].class
  User Load (1.4ms)  SELECT "users".* FROM "users" ORDER BY "users"."name" ASC
 => User(id: integer, name: string, address: string, created_at: datetime, updated_at: datetime, paid: string, contact: integer) 


2.7.0 :093 > User.order(:name)[1].id
  User Load (1.3ms)  SELECT "users".* FROM "users" ORDER BY "users"."name" ASC
 => 57 


2.7.0 :125 > User.order(:name).last
  User Load (0.9ms)  SELECT "users".* FROM "users" ORDER BY "users"."name" DESC LIMIT $1  [["LIMIT", 1]]
 => #<User id: 56, name: "Pavan", address: "No Address", created_at: "2020-02-13 06:26:34", updated_at: "2020-02-13 06:29:45", paid: "No", contact: 7854789658> 


2.7.0 :126 > User.order(:name).where(name: "Pavan")
  User Load (0.5ms)  SELECT "users".* FROM "users" WHERE "users"."name" = $1 ORDER BY "users"."name" ASC LIMIT $2  [["name", "Pavan"], ["LIMIT", 11]]
 => #<ActiveRecord::Relation [#<User id: 56, name: "Pavan", address: "No Address", created_at: "2020-02-13 06:26:34", updated_at: "2020-02-13 06:29:45", paid: "No", contact: 7854789658>]> 


2.7.0 :142 > User.order(:name).where(name: "Pavan").where(id: 56)
  User Load (1.3ms)  SELECT "users".* FROM "users" WHERE "users"."name" = $1 AND "users"."id" = $2 ORDER BY "users"."name" ASC LIMIT $3  [["name", "Pavan"], ["id", 56], ["LIMIT", 11]]
 => #<ActiveRecord::Relation [#<User id: 56, name: "Pavan", address: "No Address", created_at: "2020-02-13 06:26:34", updated_at: "2020-02-13 06:29:45", paid: "No", contact: 7854789658>]> 


2.7.0 :144 > User.order(:name).where(name: "Pavan").where(id: 56).id
Traceback (most recent call last):
        1: from (irb):143
  User Load (0.7ms)  SELECT "users".* FROM "users" WHERE "users"."name" = $1 AND "users"."id" = $2 ORDER BY "users"."name" ASC LIMIT $3  [["name", "Pavan"], ["id", 56], ["LIMIT", 11]]
NoMethodError (undefined method `id' for #<User::ActiveRecord_Relation:0x00007f74d8ac1328>)
Did you mean?  ids


 
2.7.0 :146 > User.order(:name).where(name: "Pavan").where(id: 56).first
  User Load (1.2ms)  SELECT "users".* FROM "users" WHERE "users"."name" = $1 AND "users"."id" = $2 ORDER BY "users"."name" ASC LIMIT $3  [["name", "Pavan"], ["id", 56], ["LIMIT", 1]]
 => #<User id: 56, name: "Pavan", address: "No Address", created_at: "2020-02-13 06:26:34", updated_at: "2020-02-13 06:29:45", paid: "No", contact: 7854789658> 


2.7.0 :147 > User.order(:name).where(name: "Pavan").where(id: 56).first.class
  User Load (1.2ms)  SELECT "users".* FROM "users" WHERE "users"."name" = $1 AND "users"."id" = $2 ORDER BY "users"."name" ASC LIMIT $3  [["name", "Pavan"], ["id", 56], ["LIMIT", 1]]
 => User(id: integer, name: string, address: string, created_at: datetime, updated_at: datetime, paid: string, contact: integer) 


2.7.0 :148 > User.order(:name).where(name: "Pavan").where(id: 56).first.id
  User Load (1.2ms)  SELECT "users".* FROM "users" WHERE "users"."name" = $1 AND "users"."id" = $2 ORDER BY "users"."name" ASC LIMIT $3  [["name", "Pavan"], ["id", 56], ["LIMIT", 1]]
 => 56 



2.7.0 :258 > User.find_by(name: "Pavan")
  User Load (1.1ms)  SELECT "users".* FROM "users" WHERE "users"."name" = $1 LIMIT $2  [["name", "Pavan"], ["LIMIT", 1]]
 => #<User id: 56, name: "Pavan", address: "No Address", created_at: "2020-02-13 06:26:34", updated_at: "2020-02-13 06:29:45", paid: "No", contact: 7854789658> 


 
2.7.0 :260 > User.find_by(name: "Pavan").class
  User Load (1.1ms)  SELECT "users".* FROM "users" WHERE "users"."name" = $1 LIMIT $2  [["name", "Pavan"], ["LIMIT", 1]]
 => User(id: integer, name: string, address: string, created_at: datetime, updated_at: datetime, paid: string, contact: integer) 



2.7.0 :261 > User.find_by(name: "Pavan").name
  User Load (1.0ms)  SELECT "users".* FROM "users" WHERE "users"."name" = $1 LIMIT $2  [["name", "Pavan"], ["LIMIT", 1]]
 => "Pavan" 


2.7.0 :262 > User.find_by(name: "Aman")
  User Load (0.5ms)  SELECT "users".* FROM "users" WHERE "users"."name" = $1 LIMIT $2  [["name", "Aman"], ["LIMIT", 1]]
 => nil 


2.7.0 :263 > User.find_by!(name: "Aman")
  User Load (0.9ms)  SELECT "users".* FROM "users" WHERE "users"."name" = $1 LIMIT $2  [["name", "Aman"], ["LIMIT", 1]]
Traceback (most recent call last):
        1: from (irb):263
ActiveRecord::RecordNotFound (Couldn't find User)



2.7.0 :338 > User.find_each(start: 65, finish: 70) do |u|
2.7.0 :339 >   p u
2.7.0 :340 > end
  User Load (1.0ms)  SELECT "users".* FROM "users" WHERE "users"."id" >= $1 AND "users"."id" <= $2 ORDER BY "users"."id" ASC LIMIT $3  [["id", 65], ["id", 70], ["LIMIT", 1000]]
#<User id: 65, name: "Pankaj", address: "No Address", created_at: "2020-02-13 07:01:52", updated_at: "2020-02-13 07:01:52", paid: "No", contact: 7854789658>
#<User id: 66, name: "Pankaj", address: "No Address", created_at: "2020-02-13 07:02:19", updated_at: "2020-02-13 07:02:19", paid: "No", contact: 7854789658>
#<User id: 67, name: "Pankaj", address: "No Address", created_at: "2020-02-13 07:02:32", updated_at: "2020-02-13 07:02:32", paid: "No", contact: 7854789658>
#<User id: 68, name: "Pankaj", address: "No Address", created_at: "2020-02-13 07:02:44", updated_at: "2020-02-13 07:02:44", paid: "No", contact: 7854789658>
#<User id: 69, name: "Pankaj", address: "No Address", created_at: "2020-02-13 07:02:49", updated_at: "2020-02-13 07:02:49", paid: "No", contact: 7854789658>
#<User id: 70, name: "Pankaj", address: "No Address", created_at: "2020-02-13 07:03:07", updated_at: "2020-02-13 07:03:07", paid: "No", contact: 7854789658>
 => nil 



2.7.0 :350 > User.where(id: [61,62,63])
  User Load (0.9ms)  SELECT "users".* FROM "users" WHERE "users"."id" IN ($1, $2, $3) LIMIT $4  [["id", 61], ["id", 62], ["id", 63], ["LIMIT", 11]]
 => #<ActiveRecord::Relation [#<User id: 61, name: "Pankaj", address: "No Address", created_at: "2020-02-13 06:50:22", updated_at: "2020-02-13 06:50:22", paid: "No", contact: 7854789658>, #<User id: 62, name: "Pankaj", address: "No Address", created_at: "2020-02-13 06:51:35", updated_at: "2020-02-13 06:51:35", paid: "No", contact: 7854789658>, #<User id: 63, name: "Pankaj", address: "No Address", created_at: "2020-02-13 06:53:58", updated_at: "2020-02-13 06:53:58", paid: "No", contact: 7854789658>]> 




2.7.0 :359 > User.where.not(name: "Pankaj")
  User Load (0.6ms)  SELECT "users".* FROM "users" WHERE "users"."name" != $1 LIMIT $2  [["name", "Pankaj"], ["LIMIT", 11]]
 => #<ActiveRecord::Relation [#<User id: 56, name: "Pavan", address: "No Address", created_at: "2020-02-13 06:26:34", updated_at: "2020-02-13 06:29:45", paid: "No", contact: 7854789658>]> 


2.7.0 :367 > User.where(name: "Pavan").or(User.where(id: 57))
  User Load (1.2ms)  SELECT "users".* FROM "users" WHERE ("users"."name" = $1 OR "users"."id" = $2) LIMIT $3  [["name", "Pavan"], ["id", 57], ["LIMIT", 11]]
 => #<ActiveRecord::Relation [#<User id: 56, name: "Pavan", address: "No Address", created_at: "2020-02-13 06:26:34", updated_at: "2020-02-13 06:29:45", paid: "No", contact: 7854789658>, #<User id: 57, name: "Pankaj", address: "No Address", created_at: "2020-02-13 06:31:44", updated_at: "2020-02-13 06:31:44", paid: "No", contact: 7854789658>]> 




2.7.0 :378 > User.order(created_at: :desc)


2.7.0 :375 > User.order(:created_at)


2.7.0 :418 > User.select(:name).class
 => User::ActiveRecord_Relation 


2.7.0 :395 > ap User.select(:name, :id)


2.7.0 :399 > ap User.select(:name).distinct


2.7.0 :447 > User.select(:name).distinct
  User Load (0.7ms)  SELECT DISTINCT "users"."name" FROM "users" LIMIT $1  [["LIMIT", 11]]
 => #<ActiveRecord::Relation [#<User id: nil, name: "Pavan">, #<User id: nil, name: "Pankaj">]> 


2.7.0 :449 > User.select(:name).distinct.class
 => User::ActiveRecord_Relation 


2.7.0 :453 > User.select(:name).distinct[1].class
  User Load (0.9ms)  SELECT DISTINCT "users"."name" FROM "users"
 => User(id: integer, name: string, address: string, created_at: datetime, updated_at: datetime, paid: string, contact: integer) 


2.7.0 :454 > User.select(:name).distinct[1].name
  User Load (0.9ms)  SELECT DISTINCT "users"."name" FROM "users"
 => "Pankaj" 


2.7.0 :473 > User.limit(1).class
 => User::ActiveRecord_Relation 


2.7.0 :474 > User.limit(1).select(:name)
  User Load (0.6ms)  SELECT "users"."name" FROM "users" LIMIT $1  [["LIMIT", 1]]
 => #<ActiveRecord::Relation [#<User id: nil, name: "Pavan">]> 


2.7.0 :490 > User.limit(5).offset(12)
  User Load (0.8ms)  SELECT "users".* FROM "users" LIMIT $1 OFFSET $2  [["LIMIT", 5], ["OFFSET", 12]]
 => #<ActiveRecord::Relation [#<User id: 69, name: "Pankaj", address: "No Address", created_at: "2020-02-13 07:02:49", updated_at: "2020-02-13 07:02:49", paid: "No", contact: 7854789658>, #<User id: 70, name: "Pankaj", address: "No Address", created_at: "2020-02-13 07:03:07", updated_at: "2020-02-13 07:03:07", paid: "No", contact: 7854789658>, #<User id: 71, name: "Pankaj", address: "No Address", created_at: "2020-02-13 07:03:17", updated_at: "2020-02-13 07:03:17", paid: "No", contact: 7854789658>]> 



2.7.0 :073 > User.where("contact::TEXT like '7%'")

