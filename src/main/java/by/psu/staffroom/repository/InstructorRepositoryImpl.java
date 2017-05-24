package by.psu.staffroom.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import by.psu.staffroom.domain.Instructor;

/**
 * = InstructorRepositoryImpl
 *
 * TODO Auto-generated class documentation
 *
 */ 
@RooJpaRepositoryCustomImpl(repository = InstructorRepositoryCustom.class)
public class InstructorRepositoryImpl extends QueryDslRepositorySupportExt<Instructor> {

    /**
     * TODO Auto-generated constructor documentation
     */
    InstructorRepositoryImpl() {
        super(Instructor.class);
    }
}