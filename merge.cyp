// Write a query using Merge to create a movie node with title "Greyhound". 
// If the node does not exist then set its released property to 2020 and 
// lastUpdatedAt property to the current time stamp. If the node already 
// exists, then only set lastUpdatedAt to the current time stamp

MERGE (m:Movie {title:"GreyHound"})
ON MATCH   SET m.lastUpdatedAt = timeStamp()
ON CREATE  SET m.lastUpdatedAt = timeStamp(), m.released = 2020
RETURN m
