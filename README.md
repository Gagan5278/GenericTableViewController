# GenericTableView
An example to use of generics with UITableViewController. With help of GenericListViewController.swift and BaseTableViewCell.swift, data can be populated without worrying about cell registration and TableView DataSource methods.

## HOW TO USE
 - Drag- Drop 'GenericListViewController.swift' and 'BaseTableViewCell.swift' file into your project folder.
  - Create your data model say ModelRoot.
 - Create a subclass of GenericListViewController say RootViewController.
 - Create subclass of BaseTableViewCell say RootTableViewCell.
 
 ####  Your custom cell code will be as below
  ```
    class RootTableViewCell: BaseTableViewCell<ModelRoot> {
          fileprivate let padding_constant: CGFloat = 10.0
         //Just to customize table cell and to explain use of custom cell
         var labelName: UILabel!
         
       override var item: ModelRoot! {
         didSet {
             self.labelName.text = item.name
         }
      }
    }
  ```
  
 ####  Your ViewController will be as below
  ```
  class RootViewController: GenericListViewController<RootTableViewCell, ModelRoot> {
   .......
  }
  ````


  ####  Inside your view controler file's viewdidLoad, supply data
  ```
   class RootViewController: GenericListViewController<RootTableViewCell, ModelRoot> {
    let dummyNames = [ModelRoot(name: "James"), ModelRoot(name: "Bianca"), ModelRoot(name: "Robert"), ModelRoot(name: "Peter"), ModelRoot(name: "Gagan"), ModelRoot(name: "Siree"), ModelRoot(name: "Sarah"), ModelRoot(name: "Pure"),  ModelRoot(name: "Annu"),  ModelRoot(name: "Const")]
 
    //MARK:- View Controller life cyle
    override func viewDidLoad() {
        super.viewDidLoad()
        //title
        self.title = "Generic Table"
        items = dummyNames
    }
  ```
  
  
#### ModelRoot 
 ```
   struct ModelRoot {
    let name: String
 }
 ```
