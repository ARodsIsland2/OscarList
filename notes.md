

// Awards database organization.

year_film,year_ceremony,ceremony,category,name,film,winner

CATEGORY
category_id
name

CEREMONY
ceremony_id
number
year

FILM
film_id
name
film_year
ceremony_id

NOMINATION
nomination_id
nominee_name
winner
category_id
film_id


// merging from branch to master, then pushing to production
git checkout master
git branch
git merge contact_form
git push origin master
git push heroku master

// clearing production database
heroku pg:reset DATABASE

// managing production database
heroku run rails db:migrate
heroku run rails db:seed
OR TO DO BOTH...
heroku run rails db:setup
