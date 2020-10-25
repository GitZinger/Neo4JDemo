match (n:Person)-[rel:ACTED_IN]->(m:Movie)
return toupper(n.name) as name ,round(avg(rel.earnings)) as salary
order by round(avg(rel.earnings)) descending
limit 1
