package com.stockspace.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.stockspace.mappers.RepairMapper;
import com.stockspace.models.Repairs;

@Component
public class RepairService {

	@Autowired(required=true)
	private RepairMapper repairMapper;

	public int addRepairs(Repairs repairs) {
		// TODO Auto-generated method stub
		return repairMapper.addRepairs(repairs);
	}

	public List<Repairs> getRepairs() {
		// TODO Auto-generated method stub
		return repairMapper.getRepairs();
	}

	public List<Repairs> getRepairsByCustomerId(int customerId) {
		// TODO Auto-generated method stub
		return repairMapper.getRepairsByCustomerId(customerId);
	}

	public Repairs getRepairById(int repairId) {
		// TODO Auto-generated method stub
		return repairMapper.getRepairById(repairId);
	}

	public int updateStatus(Repairs repair) {
		// TODO Auto-generated method stub
		return repairMapper.updateStatus(repair);
	}
}
