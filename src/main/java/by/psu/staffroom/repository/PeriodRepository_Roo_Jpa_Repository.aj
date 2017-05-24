// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package by.psu.staffroom.repository;

import by.psu.staffroom.domain.Period;
import by.psu.staffroom.repository.PeriodRepository;
import by.psu.staffroom.repository.PeriodRepositoryCustom;
import io.springlets.data.jpa.repository.DetachableJpaRepository;
import org.springframework.transaction.annotation.Transactional;

privileged aspect PeriodRepository_Roo_Jpa_Repository {
    
    declare parents: PeriodRepository extends DetachableJpaRepository<Period, Long>;
    
    declare parents: PeriodRepository extends PeriodRepositoryCustom;
    
    declare @type: PeriodRepository: @Transactional(readOnly = true);
    
}