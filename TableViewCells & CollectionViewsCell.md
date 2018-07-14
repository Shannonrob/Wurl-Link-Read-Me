                                        Coding instructions
                                        ####################Creating Cells views And Passing Data###########################
####Project creation & Iboutlets
Change the name of the VC
Embed VC into Nav Controller
Change Nav bar tint to prefered color & turn off translucent
Edit title color to prefered
Add title for Nav bar/VC to prefered
Add Label if of desire - edit font to preference -> add constraints
Add tableview ->  add constraints -> add tableView Cell -> add imageView to cell -> add constraints -> selct image -> select aspect fit (clip to bounds) -> add label and customize label -> add constraints
Create new groups Model,View,Controller 
Relocate VC into Controller group
View Group -> create cocoa touch class {Class - "CategoryCell", Subclass "UiTableViewCell"}  -> add iboulets for labels etc 
StoryBoard -> change table view cell  Custom class to "CategoryCell" connect iboulets
Go to VC -> add iboulet of UITableView! 
StoryBoard -> connect VC iboulet to tablebleView 

/// passing data
Create Model file -> Swift file {Save as - Category} -> create struct "name of struct'" ->  create variables  of category ->  create initializer 


###Create a service (store data)###
Create a group -> create a swift file {DataService} -> make a class  -> create a singleton "instance"" -> create a func to feed the app from server -> create data source

####Feed VC with date### 
VC -> Add tableViews Protocols -> protocol stubs -> add number of row count

#### Go to View Group-> Cell file#### 
Create a function "updating the views on the cell and pass in the categories"

#### Go back to categoryVC
implement the function just created -> grab the category from the category arrays -> update cells
set dataSource and delegate in View did load

### Go to storyboard
Set  cell reuseable indentifier  -> category cell -> atributes  -> identifier

### Remove lines located between the cells
Select tableview -> attributes inspector -> {seperator} change to none -> uncheck scroll indicator



                                                ##############################Creating Collection view and Passing DATA##########################################

### Create user interface
Create new VC -> Create seque ->Change title color "go to nav bar and change the tint to white" -> add label & set constraints -> add collection view & set constraints -> expand cell to prefered size -> add image view & constraints -> add label & constraints
add image & aspect fit

### Add iboulets
#View group -> create new cocoa touch class {Class - "ProductCell", SUbclass "UICollectionViewCell"} -> create iboulets {UIImageView!,UiLabel!}
#Storyboard -> change collection view cell custom class {Class "ProducttCell"} ->add iboulets

#Model group-> create swift {save as "Product"}  ->create struct -> create variables & initializers ->  

### Create a service to get whatever product that we need by creating arrays
#DataService-> create variables  -> create a function to get products "that will return an array" -> create a switch statement "to decide wich array to return" -> create functions to be able to complete the switch statement -> complete switch statement & functions

###To show product screen and configure collection view
Controller Group-> create cocoa touch class {Class "ProductsVC", Subclass of "UIViewController"} 
Storyboard-> change VC class to "ProductsVC" -> set segue identifier to "ProductsVC"

### Present the segue and pass the correct data to the correct VC
CategoriesVC -> create tableview func "didSelectRowAt  (this will tell which row was tapped) & pass data to the segue -> prepare for segue method (to pass data  over to the productsVC)
ProductsVC -> create a func and initialize to pass in categories -> create a list of private constants  and make it an emprty array to base the collection off it -> pass in the title to the productsVC
CategoriesVC -> call initialize products function -> create an assertion "so at build time we know its working correctly" 
ProductsVC -> call UICollectionviewDelegate & Datasource "to get the collection view to work"-> create add iboulet "for the UICollectionView!"-> add protocol stubs -> make the collection View be the delegate in viewDidLoad -> assign number of sections -> pass in the data to the cell
ProductCell -> create a func to update the data/views 
ProductVC -> grab the correct product and pass it into cell
StoryBoard -> set iboulet to VC -> give the cell a reusable identifier "ProductCell"
ProductsVC -> set the navigation title "in the initProducts"
CategoriesVC -> set navigation back button in the prepare for segue "by creating a bar button with an empty tittle"

