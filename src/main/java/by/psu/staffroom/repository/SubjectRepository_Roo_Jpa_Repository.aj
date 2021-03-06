// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package by.psu.staffroom.repository;

import by.psu.staffroom.domain.Subject;
import by.psu.staffroom.repository.SubjectRepository;
import by.psu.staffroom.repository.SubjectRepositoryCustom;
import io.springlets.data.jpa.repository.DetachableJpaRepository;
import org.springframework.transaction.annotation.Transactional;

privileged aspect SubjectRepository_Roo_Jpa_Repository {
    
    declare parents: SubjectRepository extends DetachableJpaRepository<Subject, Long>;
    
    declare parents: SubjectRepository extends SubjectRepositoryCustom;
    
    declare @type: SubjectRepository: @Transactional(readOnly = true);
    
}
