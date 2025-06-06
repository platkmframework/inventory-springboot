 /*******************************************************************************
Code generated by platkmframework 
*******************************************************************************/


package org.platkmframework.inventory.domain.service;

import org.platkmframework.inventory.domain.vo.CategoriesVO;
import java.util.List;
import java.util.Optional;
import org.springframework.data.domain.Page;

public interface CategoriesService {
  
  public List<CategoriesVO> listCategories(); 

 public Page<CategoriesVO>criteriaCategories(int page, int size); 

  public CategoriesVO createCategories(CategoriesVO categoriesVO) ;

  public Optional<CategoriesVO> getCategoriesById(java.lang.Long categoryId);

  public Optional<CategoriesVO> updateCategories(CategoriesVO categories);

  public  boolean removeCategories(java.lang.Long categoryId);
}