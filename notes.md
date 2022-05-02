

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


// create new branch
git checkout -b new_branch_name

// merging from branch to master, then pushing to production
git checkout master
git branch
git merge working_branch_name
git push origin master
git push heroku master

// clearing production database
heroku pg:reset DATABASE

// managing production database
heroku run rails db:migrate
heroku run rails db:seed
OR TO DO BOTH...
heroku run rails db:setup


// good checkbox tutorial
https://www.video-index.com/en/ruby-on-rails/english/ruby-on-rails-tutorial-building-a-checklist#/add-mark-as-complete-functionality-rails-generate-migration-addcompletedattoitems-completedatdatetim

