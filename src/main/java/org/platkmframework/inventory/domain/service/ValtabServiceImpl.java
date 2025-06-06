 /*******************************************************************************
Code generated by platkmframework 
*******************************************************************************/


package org.platkmframework.inventory.domain.service;

import org.platkmframework.inventory.domain.vo.ValtabVO;
import org.platkmframework.inventory.domain.entity.Valtab;
import org.platkmframework.inventory.domain.dao.ValtabMapper;
import org.platkmframework.inventory.domain.dao.ValtabRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
 
@Service
public class ValtabServiceImpl implements  ValtabService{

    @Autowired
    private ValtabRepository valtabRepository;
 
  @Override
  public List<ValtabVO> listValtab(){
        return valtabRepository.findAll().stream()
                .map(ValtabMapper::toVO)
                .collect(Collectors.toList());
 }

  @Override
  public Page<ValtabVO> criteriaValtab(int page, int size){
 		Pageable pageable = PageRequest.of(page, size);
		 return valtabRepository.findAll(pageable)
	                .map(ValtabMapper::toVO);
 }

 @Override
 public ValtabVO createValtab(ValtabVO valtabVO)  {
        Valtab valtab= ValtabMapper.toEntity(valtabVO);
        return ValtabMapper.toVO(valtabRepository.save(valtab));
 }

 @Override
 public Optional<ValtabVO> getValtabById(java.lang.Long valtabId){
        return valtabRepository.findById(valtabId)
                .map(ValtabMapper::toVO);
 }

  @Override
  public Optional<ValtabVO> updateValtab( ValtabVO valtabVO){
       return valtabRepository.findById(valtabVO.getValtabId()).map(valtab -> {
            ValtabMapper.toEntity(valtabVO, valtab);
            return ValtabMapper.toVO(valtabRepository.save(valtab));
        });
 }

	@Override
	public boolean removeValtab(java.lang.Long valtabId) {
 		return valtabRepository.findById(valtabId).map(valtab -> {
            		valtabRepository.delete(valtab);
            		return true;
        		}).orElse(false);
	}
}

