package com.stockspace.mappers;

import java.util.List;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.stockspace.models.Repairs;

@Repository(value="repairMapper")
@Component
public interface RepairMapper {

	int addRepairs(Repairs repairs);

	List<Repairs> getRepairs();

	List<Repairs> getRepairsByCustomerId(int customerId);

	Repairs getRepairById(int repairId);

	int updateStatus(Repairs repair);

	
}
