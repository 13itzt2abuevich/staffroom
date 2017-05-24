package by.psu.staffroom.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import by.psu.staffroom.domain.Clazz;

/**
 * = ClazzRepositoryImpl
 *
 * TODO Auto-generated class documentation
 *
 */ 
@RooJpaRepositoryCustomImpl(repository = ClazzRepositoryCustom.class)
public class ClazzRepositoryImpl extends QueryDslRepositorySupportExt<Clazz> {

    /**
     * TODO Auto-generated constructor documentation
     */
    ClazzRepositoryImpl() {
        super(Clazz.class);
    }
}