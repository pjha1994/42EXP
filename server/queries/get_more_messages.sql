SELECT id,message,username,timestamp FROM project_messages
WHERE project=(SELECT name from project WHERE id = $1) and id < $2
ORDER BY timestamp DESC LIMIT 10;
