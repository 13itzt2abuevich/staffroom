// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package by.psu.staffroom.web;

import by.psu.staffroom.domain.Lesson;
import by.psu.staffroom.web.RoomJsonMixin;
import com.fasterxml.jackson.annotation.JsonIgnore;
import java.util.Set;

privileged aspect RoomJsonMixin_Roo_JSONMixin {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @JsonIgnore
    private Set<Lesson> RoomJsonMixin.lessons;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Set
     */
    public Set<Lesson> RoomJsonMixin.getLessons() {
        return lessons;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param lessons
     */
    public void RoomJsonMixin.setLessons(Set<Lesson> lessons) {
        this.lessons = lessons;
    }
    
}