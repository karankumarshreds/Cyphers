// to check if Follower follows the followee

MATCH (a: Person {name: "Followee"})<-[:FOLLOWS]-(b: Person {name: "Follower"}) RETURN a,b

MATCH  (a:Person{name:"Followee"}),(b:Person{name:"Follower"})
RETURN exists((a)<-[:FOLLOWS]-(b)) // returns boolean
