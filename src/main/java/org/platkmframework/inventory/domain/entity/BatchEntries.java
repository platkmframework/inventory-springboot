 /*******************************************************************************
Code generated by platkmframework 
*******************************************************************************/

package org.platkmframework.inventory.domain.entity; 

import jakarta.persistence.*;

@Entity
@Table(name="batch_entries") 
public class BatchEntries {

  @Id
  @GeneratedValue
  @Column(name="entry_id", nullable=false, precision=10, scale=0)
  private java.lang.Long entryId;


  @JoinColumn(table = "batches", name="batch_id")

  @Column(name="batch_id", nullable=false)
  private java.lang.Integer batchId;


  @JoinColumn(table = "products", name="product_id")

  @Column(name="product_id", nullable=false)
  private java.lang.Integer productId;


  @Column(name="quantity", nullable=false)
  private java.lang.Double quantity;


  @Column(name="entry_date", nullable=true)
  private java.time.LocalDateTime entryDate;


  @JoinColumn(table = "suppliers", name="supplier_id")

  @Column(name="supplier_id", nullable=true)
  private java.lang.Integer supplierId;


  @JoinColumn(table = "users", name="user_id")

  @Column(name="user_id", nullable=true)
  private java.lang.Integer userId;


  public  java.lang.Long getEntryId(){
    return this.entryId;
  }

  public  BatchEntries setEntryId (java.lang.Long entryId){
    this.entryId = entryId;
    return this;
  }

  public  java.lang.Integer getBatchId(){
    return this.batchId;
  }

  public  BatchEntries setBatchId (java.lang.Integer batchId){
    this.batchId = batchId;
    return this;
  }

  public  java.lang.Integer getProductId(){
    return this.productId;
  }

  public  BatchEntries setProductId (java.lang.Integer productId){
    this.productId = productId;
    return this;
  }

  public  java.lang.Double getQuantity(){
    return this.quantity;
  }

  public  BatchEntries setQuantity (java.lang.Double quantity){
    this.quantity = quantity;
    return this;
  }

  public  java.time.LocalDateTime getEntryDate(){
    return this.entryDate;
  }

  public  BatchEntries setEntryDate (java.time.LocalDateTime entryDate){
    this.entryDate = entryDate;
    return this;
  }

  public  java.lang.Integer getSupplierId(){
    return this.supplierId;
  }

  public  BatchEntries setSupplierId (java.lang.Integer supplierId){
    this.supplierId = supplierId;
    return this;
  }

  public  java.lang.Integer getUserId(){
    return this.userId;
  }

  public  BatchEntries setUserId (java.lang.Integer userId){
    this.userId = userId;
    return this;
  }


}