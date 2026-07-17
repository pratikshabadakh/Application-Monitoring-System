
-- Total incidents
SELECT COUNT(*) AS Total_Incidents
FROM incidents;

-- Open incidents
SELECT COUNT(*) AS Open_Incidents
FROM incidents
WHERE Status='Open';

-- Closed incidents
SELECT COUNT(*) AS Closed_Incidents
FROM incidents
WHERE Status='Closed';

-- High priority incidents
SELECT COUNT(*) AS High_Priority
FROM incidents
WHERE Priority='High';

-- Incidents by module
SELECT Module,
COUNT(*) AS Total
FROM incidents
GROUP BY Module;

-- Failed application logs
SELECT *
FROM application_logs
WHERE Status='Failed';

-- Average response time
SELECT AVG(Response_Time_ms)
FROM application_logs;
