-- https://www.hackerrank.com/challenges/interviews/problem

select CT.contest_id
     , CT.hacker_id
     , CT.name
     , sum(total_submissions) as [total_submissions]
     , sum(total_accepted_submissions) as [total_accepted_submissions]
     , sum(total_views) as [total_views]
     , sum(total_unique_views) as [total_unique_views]
  from Contests CT
 inner
  join Colleges CO
    on CO.contest_id = CT.contest_id 
 inner
  join Challenges CH
    on CH.college_id = CO.college_id 
  left
  join (select challenge_id
             , sum(total_views) as total_views
             , sum(total_unique_views) as total_unique_views 
          from View_Stats
         group
            by challenge_id) VS
    on VS.challenge_id  = CH.challenge_id
  left
  join (select challenge_id
             , sum(total_submissions) as total_submissions
             , sum(total_accepted_submissions) as total_accepted_submissions 
          from Submission_Stats
         group
            by challenge_id) SS 
    on SS.challenge_id  = CH.challenge_id
 group
    by CT.contest_id
     , CT.hacker_id
     , CT.name 
having sum(total_submissions) + sum(total_accepted_submissions) +
       sum(total_views) + sum(total_unique_views) > 0 
 order
    by CT.contest_id;
