// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package by.psu.staffroom.repository;

import by.psu.staffroom.domain.Clazz;
import by.psu.staffroom.domain.Instructor;
import by.psu.staffroom.domain.Lesson;
import by.psu.staffroom.domain.Period;
import by.psu.staffroom.domain.Room;
import by.psu.staffroom.domain.Subject;
import by.psu.staffroom.repository.LessonRepository;
import by.psu.staffroom.repository.LessonRepositoryCustom;
import io.springlets.data.jpa.repository.DetachableJpaRepository;
import org.springframework.transaction.annotation.Transactional;

privileged aspect LessonRepository_Roo_Jpa_Repository {
    
    declare parents: LessonRepository extends DetachableJpaRepository<Lesson, Long>;
    
    declare parents: LessonRepository extends LessonRepositoryCustom;
    
    declare @type: LessonRepository: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param period
     * @return Long
     */
    public abstract long LessonRepository.countByPeriod(Period period);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param instructor
     * @return Long
     */
    public abstract long LessonRepository.countByInstructor(Instructor instructor);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param subject
     * @return Long
     */
    public abstract long LessonRepository.countBySubject(Subject subject);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param clazz
     * @return Long
     */
    public abstract long LessonRepository.countByClazz(Clazz clazz);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param room
     * @return Long
     */
    public abstract long LessonRepository.countByRoom(Room room);
    
}
