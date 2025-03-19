/*******************************************************************************
Code generated by platkmframework 
*******************************************************************************/

package org.platkmframework.inventory.domain.vo;

import java.io.Serializable;

public class ProductsVO  implements Serializable{

 private static final long serialVersionUID = 1L;

private java.lang.Long productId;

private java.lang.String name;

private java.lang.String description;

private java.lang.Integer categoryId;

private java.lang.Float purchasePrice;

private java.lang.Float salePrice;

private java.lang.String unit;

private java.lang.Float minQuantity;

private java.lang.Boolean batchManaged;

private java.lang.Boolean perishable;

private java.lang.Boolean status;

 
  public  java.lang.Long getProductId(){
    return this.productId;
  }

  public  ProductsVO setProductId (java.lang.Long productId){
    this.productId = productId;
    return this;
  }

  public  java.lang.String getName(){
    return this.name;
  }

  public  ProductsVO setName (java.lang.String name){
    this.name = name;
    return this;
  }

  public  java.lang.String getDescription(){
    return this.description;
  }

  public  ProductsVO setDescription (java.lang.String description){
    this.description = description;
    return this;
  }

  public  java.lang.Integer getCategoryId(){
    return this.categoryId;
  }

  public  ProductsVO setCategoryId (java.lang.Integer categoryId){
    this.categoryId = categoryId;
    return this;
  }

  public  java.lang.Float getPurchasePrice(){
    return this.purchasePrice;
  }

  public  ProductsVO setPurchasePrice (java.lang.Float purchasePrice){
    this.purchasePrice = purchasePrice;
    return this;
  }

  public  java.lang.Float getSalePrice(){
    return this.salePrice;
  }

  public  ProductsVO setSalePrice (java.lang.Float salePrice){
    this.salePrice = salePrice;
    return this;
  }

  public  java.lang.String getUnit(){
    return this.unit;
  }

  public  ProductsVO setUnit (java.lang.String unit){
    this.unit = unit;
    return this;
  }

  public  java.lang.Float getMinQuantity(){
    return this.minQuantity;
  }

  public  ProductsVO setMinQuantity (java.lang.Float minQuantity){
    this.minQuantity = minQuantity;
    return this;
  }

  public  java.lang.Boolean getBatchManaged(){
    return this.batchManaged;
  }

  public  ProductsVO setBatchManaged (java.lang.Boolean batchManaged){
    this.batchManaged = batchManaged;
    return this;
  }

  public  java.lang.Boolean getPerishable(){
    return this.perishable;
  }

  public  ProductsVO setPerishable (java.lang.Boolean perishable){
    this.perishable = perishable;
    return this;
  }

  public  java.lang.Boolean getStatus(){
    return this.status;
  }

  public  ProductsVO setStatus (java.lang.Boolean status){
    this.status = status;
    return this;
  }




}