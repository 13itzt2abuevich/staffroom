// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package by.psu.staffroom.web;

import by.psu.staffroom.service.api.LessonService;
import by.psu.staffroom.web.LessonsCollectionThymeleafController;

privileged aspect LessonsCollectionThymeleafController_Roo_Controller {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private LessonService LessonsCollectionThymeleafController.lessonService;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return LessonService
     */
    public LessonService LessonsCollectionThymeleafController.getLessonService() {
        return lessonService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param lessonService
     */
    public void LessonsCollectionThymeleafController.setLessonService(LessonService lessonService) {
        this.lessonService = lessonService;
    }
    
}
