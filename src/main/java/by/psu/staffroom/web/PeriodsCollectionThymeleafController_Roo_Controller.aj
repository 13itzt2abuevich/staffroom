// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package by.psu.staffroom.web;

import by.psu.staffroom.service.api.PeriodService;
import by.psu.staffroom.web.PeriodsCollectionThymeleafController;

privileged aspect PeriodsCollectionThymeleafController_Roo_Controller {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private PeriodService PeriodsCollectionThymeleafController.periodService;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return PeriodService
     */
    public PeriodService PeriodsCollectionThymeleafController.getPeriodService() {
        return periodService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param periodService
     */
    public void PeriodsCollectionThymeleafController.setPeriodService(PeriodService periodService) {
        this.periodService = periodService;
    }
    
}
