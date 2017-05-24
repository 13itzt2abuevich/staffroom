// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package by.psu.staffroom.domain;

import by.psu.staffroom.domain.Lesson;
import by.psu.staffroom.domain.Period;
import io.springlets.format.EntityFormat;
import javax.persistence.Entity;
import org.springframework.util.Assert;

privileged aspect Period_Roo_Jpa_Entity {
    
    declare @type: Period: @Entity;
    
    declare @type: Period: @EntityFormat("#{ordinal}(#{startTime} - #{endTime})");
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String Period.ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE = "The given Iterable of items to add can't be null!";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String Period.ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE = "The given Iterable of items to add can't be null!";
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param lessonsToAdd
     */
    public void Period.addToLessons(Iterable<Lesson> lessonsToAdd) {
        Assert.notNull(lessonsToAdd, ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE);
        for (Lesson item : lessonsToAdd) {
            this.lessons.add(item);
            item.setPeriod(this);
        }
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param lessonsToRemove
     */
    public void Period.removeFromLessons(Iterable<Lesson> lessonsToRemove) {
        Assert.notNull(lessonsToRemove, ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE);
        for (Lesson item : lessonsToRemove) {
            this.lessons.remove(item);
            item.setPeriod(null);
        }
    }
    
}
