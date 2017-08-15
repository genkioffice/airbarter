Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.


rails generate scaffold Product name
rails generate scaffold Entry quantity:integer user:references product:references
rails generate scaffold Transaction proposed_product_id:integer proposed_product_quantity:integer proposed_by_user_id:integer wanted_product_id:integer wanted_product_quantity:integer accepted_by_user_id:integer


rails generate scaffold Transaction proposed_product:references proposed_product_quantity:integer proposed_by_user:references wanted_product:references wanted_product_quantity:integer accepted_by_user:references

