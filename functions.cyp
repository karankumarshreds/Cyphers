// to check if Follower follows the followee

MATCH (a: Person {name: "Jason Richardson"}), (b: Person {name: "Karan Kumar"})
RETURN exists((a)-[:FOLLOWS]-(b))

link : https://neo4j.com/docs/cypher-manual/current/functions/predicate/#functions-exists
