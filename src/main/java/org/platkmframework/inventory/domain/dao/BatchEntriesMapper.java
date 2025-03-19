/*******************************************************************************
Code generated by platkmframework 
*******************************************************************************/

package  org.platkmframework.inventory.domain.dao;

import  org.platkmframework.inventory.domain.vo.BatchEntriesVO;
import  org.platkmframework.inventory.domain.entity.BatchEntries;

public class BatchEntriesMapper{

     public static BatchEntriesVO toVO(BatchEntries batchentries) {
        BatchEntriesVO vo = new BatchEntriesVO();
      vo.setEntryId(batchentries.getEntryId());
      vo.setBatchId(batchentries.getBatchId());
      vo.setProductId(batchentries.getProductId());
      vo.setQuantity(batchentries.getQuantity());
      vo.setEntryDate(batchentries.getEntryDate());
      vo.setSupplierId(batchentries.getSupplierId());
      vo.setUserId(batchentries.getUserId());
        return vo;
    }

    public static BatchEntries toEntity(BatchEntriesVO vo) {
        BatchEntries batchentries = new BatchEntries();
       batchentries.setBatchId(vo.getBatchId());
       batchentries.setProductId(vo.getProductId());
       batchentries.setQuantity(vo.getQuantity());
       batchentries.setEntryDate(vo.getEntryDate());
       batchentries.setSupplierId(vo.getSupplierId());
       batchentries.setUserId(vo.getUserId());
        return batchentries;
    }

    public static BatchEntries toEntity(BatchEntriesVO vo, BatchEntries batchentries) {

       batchentries.setBatchId(vo.getBatchId());
       batchentries.setProductId(vo.getProductId());
       batchentries.setQuantity(vo.getQuantity());
       batchentries.setEntryDate(vo.getEntryDate());
       batchentries.setSupplierId(vo.getSupplierId());
       batchentries.setUserId(vo.getUserId());
        return batchentries;
    }

}