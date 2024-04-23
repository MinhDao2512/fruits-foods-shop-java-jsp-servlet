package com.organicfoods.dao;

import java.util.List;

import com.organicfoods.model.ProductModel;

public interface IProductDAO extends GenericDAO<ProductModel>{
	Long insertProduct(ProductModel product);
	ProductModel findById(Long id);
	Boolean updateProduct(ProductModel product);
	Boolean deleteProduct(Long id);
	List<ProductModel> findAll();
	List<ProductModel> findByOffsetAndLimit(Integer offset, Integer limit, String sortName, String sortBy);
	Integer countProducts();
	List<ProductModel> findByCode(Integer offset, Integer limit, String code);
	Integer countProductsByCode(String code);
}
