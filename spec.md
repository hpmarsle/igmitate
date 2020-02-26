# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [x] Include at least one has_many relationship (User has_many Posts, HashTag has_many Posts)
- [x] Include at least one belongs_to relationship (Post belongs_to User, Post belongs_to HashTag)
- [x] Include at least two has_many through relationships (HashTag has_many Users, through Posts; User has_many HashTags through Posts)
- [ ] Include at least one many-to-many relationship (HashTag has_many Users, through Posts; User has_many HashTags through Posts)
- [ ] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (post.caption)
- [ ] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
- [ ] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. Post.most_popular_hashtag URL: /posts/hashtag_stats)************* WORK ON WED
- [x] Include signup (how e.g. Devise)
- [x] Include login (how e.g. Devise)
- [x] Include logout (how e.g. Devise)
- [ ] Include third party signup/login (how e.g. Devise/OmniAuth) ************* WORK ON WED AM
- [x] Include nested resource show or index (URL e.g. users/2/posts)
- [x] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new) 
- [ ] Include form display of validation errors (form URL e.g. /recipes/new) ************* WORK ON WED
            **********REFACTOR WEDNESDAY*****************
Confirm:
- [ ] The application is pretty DRY
- [ ] Limited logic in controllers
- [ ] Views use helper methods if appropriate
- [ ] Views use partials if appropriate

TO DO NOTES:
omniauth
form display of validation errors
class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. Post.most_popular_hashtag URL: /posts/hashtag_stats)
add back button to show page
don't build blank hashtag and connect nil name to post**need to reset db
readme
detail current bugs:

Later features:
active storage for photos
search accounts by username