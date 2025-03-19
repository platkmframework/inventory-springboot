/*******************************************************************************
Code generated by platkmframework 
*******************************************************************************/

package  org.platkmframework.inventory.domain.dao;

import  org.platkmframework.inventory.domain.vo.BatchMovementsVO;
import  org.platkmframework.inventory.domain.entity.BatchMovements;

public class BatchMovementsMapper{

     public static BatchMovementsVO toVO(BatchMovements batchmovements) {
        BatchMovementsVO vo = new BatchMovementsVO();
      vo.setMovementId(batchmovements.getMovementId());
      vo.setBatchId(batchmovements.getBatchId());
      vo.setMovementType(batchmovements.getMovementType());
      vo.setQuantity(batchmovements.getQuantity());
      vo.setMovementDate(batchmovements.getMovementDate());
      vo.setUserId(batchmovements.getUserId());
      vo.setNotes(batchmovements.getNotes());
        return vo;
    }

    public static BatchMovements toEntity(BatchMovementsVO vo) {
        BatchMovements batchmovements = new BatchMovements();
       batchmovements.setBatchId(vo.getBatchId());
       batchmovements.setMovementType(vo.getMovementType());
       batchmovements.setQuantity(vo.getQuantity());
       batchmovements.setMovementDate(vo.getMovementDate());
       batchmovements.setUserId(vo.getUserId());
       batchmovements.setNotes(vo.getNotes());
        return batchmovements;
    }

    public static BatchMovements toEntity(BatchMovementsVO vo, BatchMovements batchmovements) {

       batchmovements.setBatchId(vo.getBatchId());
       batchmovements.setMovementType(vo.getMovementType());
       batchmovements.setQuantity(vo.getQuantity());
       batchmovements.setMovementDate(vo.getMovementDate());
       batchmovements.setUserId(vo.getUserId());
       batchmovements.setNotes(vo.getNotes());
        return batchmovements;
    }

}