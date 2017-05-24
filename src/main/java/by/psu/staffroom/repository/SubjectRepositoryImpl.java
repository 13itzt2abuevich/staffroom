package by.psu.staffroom.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import by.psu.staffroom.domain.Subject;

/**
 * = SubjectRepositoryImpl
 *
 * TODO Auto-generated class documentation
 *
 */ 
@RooJpaRepositoryCustomImpl(repository = SubjectRepositoryCustom.class)
public class SubjectRepositoryImpl extends QueryDslRepositorySupportExt<Subject> {

    /**
     * TODO Auto-generated constructor documentation
     */
    SubjectRepositoryImpl() {
        super(Subject.class);
    }
}