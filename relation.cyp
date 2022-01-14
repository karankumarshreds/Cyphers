// to check if Follower follows the followee

MATCH (a: Person {name: "Followee"})<-[:FOLLOWS]-(b: Person {name: "Follower"}) RETURN a,b
