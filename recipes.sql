-- Create the table
CREATE TABLE recipes (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    ingredients TEXT NOT NULL,
    instructions TEXT NOT NULL
);

-- Insert some data into the table
INSERT INTO recipes (name, ingredients, instructions) VALUES 
    ('Spaghetti Bolognese', '1 lb ground beef, 1 onion diced, 3 cloves of garlic minced, 1 can of crushed tomatoes, salt, pepper, red pepper flakes', '1. Cook the beef in a pan until browned. Drain off any excess fat. 2. Add the onion and garlic to the pan and cook until softened. 3. Add the tomatoes, salt, pepper, and red pepper flakes. Bring to a simmer and let cook for 15 minutes. 4. Cook spaghetti according to package instructions. 5. Serve sauce over cooked spaghetti. '),
    ('Chocolate Chip Cookies', '2 1/4 cups all-purpose flour, 1 tsp baking soda, 1 tsp salt, 1 cup unsalted butter, 3/4 cup white sugar, 3/4 cup brown sugar, 2 tsp vanilla extract, 2 large eggs, 2 cups semisweet chocolate chips', '1. Preheat the oven to 350°F (175°C). 2. In a medium mixing bowl, combine the flour, baking soda, and salt. 3. In a separate mixing bowl, cream the butter, white sugar, brown sugar, and vanilla extract. 4. Mix in the eggs, one at a time. 5. Gradually stir in the flour mixture until just combined. 6. Fold in the chocolate chips. 7. Drop rounded spoonfuls of dough onto ungreased baking sheets. 8. Bake for 8-10 minutes, or until golden brown.');
