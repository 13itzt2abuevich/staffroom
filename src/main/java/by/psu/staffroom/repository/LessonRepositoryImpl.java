package by.psu.staffroom.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import by.psu.staffroom.domain.Lesson;

/**
 * = LessonRepositoryImpl
 *
 * TODO Auto-generated class documentation
 *
 */ 
@RooJpaRepositoryCustomImpl(repository = LessonRepositoryCustom.class)
public class LessonRepositoryImpl extends QueryDslRepositorySupportExt<Lesson> {

    /**
     * TODO Auto-generated constructor documentation
     */
    LessonRepositoryImpl() {
        super(Lesson.class);
    }
}