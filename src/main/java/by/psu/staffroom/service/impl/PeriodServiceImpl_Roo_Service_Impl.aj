// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package by.psu.staffroom.service.impl;

import by.psu.staffroom.domain.Lesson;
import by.psu.staffroom.domain.Period;
import by.psu.staffroom.repository.PeriodRepository;
import by.psu.staffroom.service.api.LessonService;
import by.psu.staffroom.service.impl.PeriodServiceImpl;
import io.springlets.data.domain.GlobalSearch;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect PeriodServiceImpl_Roo_Service_Impl {
    
    declare @type: PeriodServiceImpl: @Service;
    
    declare @type: PeriodServiceImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private PeriodRepository PeriodServiceImpl.periodRepository;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private LessonService PeriodServiceImpl.lessonService;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param periodRepository
     * @param lessonService
     */
    @Autowired
    public PeriodServiceImpl.new(PeriodRepository periodRepository, @Lazy LessonService lessonService) {
        setPeriodRepository(periodRepository);
        setLessonService(lessonService);
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return PeriodRepository
     */
    public PeriodRepository PeriodServiceImpl.getPeriodRepository() {
        return periodRepository;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param periodRepository
     */
    public void PeriodServiceImpl.setPeriodRepository(PeriodRepository periodRepository) {
        this.periodRepository = periodRepository;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return LessonService
     */
    public LessonService PeriodServiceImpl.getLessonService() {
        return lessonService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param lessonService
     */
    public void PeriodServiceImpl.setLessonService(LessonService lessonService) {
        this.lessonService = lessonService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param period
     * @param lessonsToAdd
     * @return Period
     */
    @Transactional
    public Period PeriodServiceImpl.addToLessons(Period period, Iterable<Long> lessonsToAdd) {
        List<Lesson> lessons = getLessonService().findAll(lessonsToAdd);
        period.addToLessons(lessons);
        return getPeriodRepository().save(period);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param period
     * @param lessonsToRemove
     * @return Period
     */
    @Transactional
    public Period PeriodServiceImpl.removeFromLessons(Period period, Iterable<Long> lessonsToRemove) {
        List<Lesson> lessons = getLessonService().findAll(lessonsToRemove);
        period.removeFromLessons(lessons);
        return getPeriodRepository().save(period);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param period
     * @param lessons
     * @return Period
     */
    @Transactional
    public Period PeriodServiceImpl.setLessons(Period period, Iterable<Long> lessons) {
        List<Lesson> items = getLessonService().findAll(lessons);
        Set<Lesson> currents = period.getLessons();
        Set<Lesson> toRemove = new HashSet<Lesson>();
        for (Iterator<Lesson> iterator = currents.iterator(); iterator.hasNext();) {
            Lesson nextLesson = iterator.next();
            if (items.contains(nextLesson)) {
                items.remove(nextLesson);
            } else {
                toRemove.add(nextLesson);
            }
        }
        period.removeFromLessons(toRemove);
        period.addToLessons(items);
        // Force the version update of the parent side to know that the parent has changed
        // because it has new books assigned
        period.setVersion(period.getVersion() + 1);
        return getPeriodRepository().save(period);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param period
     */
    @Transactional
    public void PeriodServiceImpl.delete(Period period) {
        // Clear bidirectional one-to-many parent relationship with Lesson
        for (Lesson item : period.getLessons()) {
            item.setPeriod(null);
        }
        
        getPeriodRepository().delete(period);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entities
     * @return List
     */
    @Transactional
    public List<Period> PeriodServiceImpl.save(Iterable<Period> entities) {
        return getPeriodRepository().save(entities);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     */
    @Transactional
    public void PeriodServiceImpl.delete(Iterable<Long> ids) {
        List<Period> toDelete = getPeriodRepository().findAll(ids);
        getPeriodRepository().deleteInBatch(toDelete);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @return Period
     */
    @Transactional
    public Period PeriodServiceImpl.save(Period entity) {
        return getPeriodRepository().save(entity);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Period
     */
    public Period PeriodServiceImpl.findOne(Long id) {
        return getPeriodRepository().findOne(id);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Period
     */
    public Period PeriodServiceImpl.findOneForUpdate(Long id) {
        return getPeriodRepository().findOneDetached(id);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return List
     */
    public List<Period> PeriodServiceImpl.findAll(Iterable<Long> ids) {
        return getPeriodRepository().findAll(ids);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return List
     */
    public List<Period> PeriodServiceImpl.findAll() {
        return getPeriodRepository().findAll();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public long PeriodServiceImpl.count() {
        return getPeriodRepository().count();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Period> PeriodServiceImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        return getPeriodRepository().findAll(globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<Period> PeriodServiceImpl.getEntityType() {
        return Period.class;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<Long> PeriodServiceImpl.getIdType() {
        return Long.class;
    }
    
}
