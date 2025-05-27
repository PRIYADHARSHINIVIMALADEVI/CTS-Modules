SELECT event_id,
  SUM(resource_type = 'pdf') AS pdfs,
  SUM(resource_type = 'image') AS images,
  SUM(resource_type = 'link') AS links
FROM Resources
GROUP BY event_id;
