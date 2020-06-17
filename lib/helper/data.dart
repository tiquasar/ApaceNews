import 'package:apacenews/models/categorie_model.dart';

List<CategoryModel> getCategories(){

  List<CategoryModel> myCategories = List<CategoryModel>();
  CategoryModel categoryModel;

  categoryModel = new CategoryModel();
  categoryModel.categorieName = "Business";
  categoryModel.imageAssetUrl = "https://images.unsplash.com/photo-1444653614773-995cb1ef9efa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1502&q=80";
  myCategories.add(categoryModel);


  categoryModel = new CategoryModel();
  categoryModel.categorieName = "Entertainment";
  categoryModel.imageAssetUrl = "https://images.unsplash.com/photo-1550921464-9f7a27f99edc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80";
  myCategories.add(categoryModel);


  categoryModel = new CategoryModel();
  categoryModel.categorieName = "General";
  categoryModel.imageAssetUrl = "https://images.unsplash.com/photo-1585829365295-ab7cd400c167?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60";
  myCategories.add(categoryModel);


  categoryModel = new CategoryModel();
  categoryModel.categorieName = "Technology";
  categoryModel.imageAssetUrl = "https://images.unsplash.com/photo-1519389950473-47ba0277781c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80";
  myCategories.add(categoryModel);



  categoryModel = new CategoryModel();
  categoryModel.categorieName = "Science";
  categoryModel.imageAssetUrl = "https://images.unsplash.com/photo-1554475901-4538ddfbccc2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1504&q=80";
  myCategories.add(categoryModel);


  categoryModel = new CategoryModel();
  categoryModel.categorieName = "Sports";
  categoryModel.imageAssetUrl = "https://images.unsplash.com/photo-1495563923587-bdc4282494d0?ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80";
  myCategories.add(categoryModel);


  categoryModel = new CategoryModel();
  categoryModel.categorieName = "Health";
  categoryModel.imageAssetUrl = "https://images.unsplash.com/photo-1494390248081-4e521a5940db?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1595&q=80";
  myCategories.add(categoryModel);


  return myCategories;

}