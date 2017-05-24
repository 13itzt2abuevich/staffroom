package by.psu.staffroom.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import by.psu.staffroom.domain.Period;

/**
 * = PeriodRepositoryImpl
 *
 * TODO Auto-generated class documentation
 *
 */ 
@RooJpaRepositoryCustomImpl(repository = PeriodRepositoryCustom.class)
public class PeriodRepositoryImpl extends QueryDslRepositorySupportExt<Period> {

    /**
     * TODO Auto-generated constructor documentation
     */
    PeriodRepositoryImpl() {
        super(Period.class);
    }
}