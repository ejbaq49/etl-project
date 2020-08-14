select
	p.title,
	p.visitors,
	p.world_heritage_site,
	r.rating,
	r.total_ratings
from parks as p
	inner join ratings as r
		on p.title = r.title;