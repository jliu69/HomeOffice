//
//  DataSource.m
//  Test1
//

#import "DataSource.h"

@implementation DataSource

- (NSArray *)tasksList {
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Source" ofType:@"plist"];
    NSDictionary *dict = [NSDictionary dictionaryWithContentsOfFile:path];
    NSArray *dataArray = [dict objectForKey:@"itemList"];
    
    return [NSArray arrayWithArray:dataArray];
}

- (NSArray *)titlesPlusEntries {
    
    //-- this is static data
    //-- if is dynamic, replace this code with web service calls
    
    NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:0];
    
    [array addObject:[NSArray arrayWithObjects:@"Meals", @"Appetizers", @"Breakfast", @"Deli Salads", @"Entrees", @"Green Salads", @"Marinated & Kabobs", @"Meal Kids", @"Pizza", @"Salsas & Dips", @"Sandwiches & Wraps", @"Sauces & Marinades", @"Sides", @"Soup & Chili", @"Sushi", nil]];
    [array addObject:[NSArray arrayWithObjects:@"Fruit", @"Apples", @"Avocados", @"Bananas", @"Berries & Cherries", @"Citrus", @"Dried Fruit & Nuts", @"Fresh Juice", @"Grapes", @"Melons", @"Pears", @"Pre-Cut", @"Stone Fruit", @"Tropical & Specialty", nil]];
    [array addObject:[NSArray arrayWithObjects:@"Vegetables", @"Asian", @"Asparagus & Artichokes", @"Avocados", @"Beans & Peas", @"Broccoli & Cauliflower", @"Brussels Sprouts", @"Carrots", @"Celery", @"Cold-Pressed Juice", @"Corn", @"Cucumbers", @"Eggplants", @"Fresh Herbs", @"Green Salads", @"Lettuce", @"Local USA", @"Mushrooms", @"Onion & Garlic", @"Packaged Salads", @"Peppers", @"Potatoes & Yams", @"Pre-Cut", @"Root Vegetables", @"Specialty", @"Spinach, Kale & Grens", @"Sprouts & Microgreens", @"Squash & Zucchini", @"Tomatos", @"Vegetarian Entrees", @"Wild & Foraged", nil]];
    [array addObject:[NSArray arrayWithObjects:@"Meat", @"Beef", @"Chicken", @"Game & Specialty", @"Lamb", @"Pork", @"Turkey", @"Veal", nil]];
    [array addObject:[NSArray arrayWithObjects:@"Seafood", @"Crab", @"Fish Fillets", @"Fish Steak", @"Fish Whole", @"Lobster", @"Mussels & Clams", @"Oysters", @"Salmon", @"Shrimp", @"Specialty", nil]];
    [array addObject:[NSArray arrayWithObjects:@"Dairy", @"Butter & Margarine", @"Cold Cuts & Hot Dogs", @"Cream & Creamers", @"Eggs", @"Juice", @"Milk", @"Packaged Cheese", @"Yogurt", nil]];
    [array addObject:[NSArray arrayWithObjects:@"Pantry", @"Bread & Crackers", @"Canned Goods", @"Cereal & Breakfast", @"Coffee, Tea & Cocoa", @"Cookies, Cakes & Pastry", @"Dried Fruit & Nuts", @"Oil & Vinger", @"Snacks", nil]];
    [array addObject:[NSArray arrayWithObjects:@"Beverages", @"Beer", @"Iced Tea & Chai", @"Juice", @"Soda", @"Sports", @"Water & Seltzer", nil]];
    [array addObject:[NSArray arrayWithObjects:@"Wine & Spirits", @"Cider", @"Fortified & Dessert", @"Red Wine", @"Rose Wine", @"Sparkling Wine", @"White Wine", nil]];
    [array addObject:[NSArray arrayWithObjects:@"Cheese Shop", @"Blues", @"Brie & Camembert", @"Cheddars & Jacks", @"Chevres", @"Fetas & Fresh", @"Goudas", @"Mazzarellas", @"Parmesan & Grating", @"Sheeps", @"Swiss & Alpine", nil]];
    [array addObject:[NSArray arrayWithObjects:@"Deli", @"Cheese", @"Cold Cuts", @"Deli Salads", @"Deli Value Pack", @"Hot Dogs & Sausages", @"Packaged Cold Cuts", nil]];
    [array addObject:[NSArray arrayWithObjects:@"Bakery & Pastry", @"Bagels & Croissants", @"Baguettes", @"Fruit & Specialty", @"Pumpernickel & Rye", @"Rolls & Buns", @"Sliced", @"Sourdough", @"White", @"Whole-Wheat & Multigranes", nil]];
    [array addObject:[NSArray arrayWithObjects:@"Frozen", @"Breakfast Food", @"Fruit", @"Ice Cream & Treats", @"Meals & Entrees", @"Meat", @"Pizza", @"Vegetables", nil]];
    [array addObject:[NSArray arrayWithObjects:@"Household", @"Bags & Wraps", @"Bathroom Tissue", @"Cleaners", @"Dishwashing", @"Facial Tissue", @"Gifts & Kitchen Tools", @"Laundry", @"Paper & Plasticware", @"Paper Towels", @"Save a Bundle", @"Supplies", nil]];
    [array addObject:[NSArray arrayWithObjects:@"Health & Beauty", @"Bath & Body", @"Cough & Cold", @"Dental Care", @"Deodorant", @"Diet & Nutrition", @"Drugstore", @"Eye Care", @"Feminine Needs", @"First Aid", @"Hair Care", @"Incontinence", @"Sexual Health", @"Shaving", @"Skin Care", @"Vitamins & Supplements", nil]];
    [array addObject:[NSArray arrayWithObjects:@"Catering", @"Appetizers - Cold", @"Appetizers - Heat & Service", @"Breakfast & Brunch", @"Entrees", @"Salads", @"Sandwiches", @"Snacks", @"Sweets", nil]];
    [array addObject:[NSArray arrayWithObjects:@"At the Office", @"Beverages", @"Catering", @"Coffee, Tea & Cocoa", @"Dairy & Deli", @"Dried Fruit & Nuts", @"Granola & Baked Goods", @"Individual 4-Min Meal", @"Paper Goods & Cleaning", @"Popular Products", @"Snack, Cereal Bars", nil]];
    [array addObject:[NSArray arrayWithObjects:@"Flowers", @"All Flowers", nil]];
    [array addObject:[NSArray arrayWithObjects:@"Baby", @"Bathtime", @"Clean-Up", @"Diapers", @"Food", @"Lunchbox", @"Medicine", @"Nursing", @"Snacks", @"Wipes", nil]];
    [array addObject:[NSArray arrayWithObjects:@"Pet", @"Cat Care", @"Car Food", @"Cat Treats & Toys", @"Dog Care", @"Dog Food", @"Dog Treats & Toys", nil]];
    
    return [NSArray arrayWithArray:array];
}


@end

