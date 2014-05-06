SELECT DISTINCT p.pid FROM Person p, Acts a 
JOIN Movie m ON
	m.mid = a.mid 
	AND m.name = 'Back to the Future'
WHERE a.pid = p.pid ;
