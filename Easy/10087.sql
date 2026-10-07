/*
    Find all posts which were reacted to with a heart
    https://platform.stratascratch.com/coding/10087-find-all-posts-which-were-reacted-to-with-a-heart
*/

select distinct(p.post_id), p.poster, post_text, post_keywords, post_date
from facebook_posts p
left join facebook_reactions r
    on p.post_id = r.post_id
where r.reaction = 'heart'