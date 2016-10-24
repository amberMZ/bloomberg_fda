# Database Schema
Here are the main indentities of the databas.

* product(name, upc_code?, product_code?, sell_by_date?, image?)
A `Product` may be created when the user makes a new pruchase containing a product or FDA issues a new recall on a product that has not been included in our database. 
* purchase(product(s), region_id, user_id, date)
A `Purchase` can contain a list of `Product`s and our frontend will record the time and location of the purchase then pushes that information along with the list of `Product`s
* recall(product_id, reason, level_id, region_id, contact_id, date)
* users(contact_id)

Their ER diagram is shown below:
![alt text](https://github.com/amberMZ/bloomberg_fda/blob/master/document/ERdiagram.png "ER diagram")
