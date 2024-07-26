-- https://www.hackerrank.com/challenges/the-company/problem

SELECT cp.company_code
     , cp.founder
     , COUNT(DISTINCT lm.lead_manager_code)
     , COUNT(DISTINCT sm.senior_manager_code)
     , COUNT(DISTINCT mn.manager_code)
     , COUNT(DISTINCT em.employee_code)
  FROM Company cp
  LEFT OUTER
  JOIN Lead_Manager lm
    ON lm.company_code = cp.company_code
   AND lm.lead_manager_code is not null
  LEFT OUTER
  JOIN Senior_Manager sm
    ON sm.company_code = lm.company_code
   AND sm.lead_manager_code = lm.lead_manager_code
   AND sm.senior_manager_code is not null
  LEFT OUTER
  JOIN Manager mn
    ON mn.company_code = sm.company_code
   AND mn.lead_manager_code = sm.lead_manager_code
   AND mn.senior_manager_code = sm.senior_manager_code
   AND mn.manager_code is not null
  LEFT OUTER
  JOIN Employee em
    ON em.company_code = mn.company_code
   AND em.lead_manager_code = mn.lead_manager_code
   AND em.senior_manager_code = mn.senior_manager_code
   AND em.manager_code = mn.manager_code
   AND em.employee_code is not null
 GROUP
    BY cp.company_code, cp.founder
 ORDER
    BY cp.company_code;
