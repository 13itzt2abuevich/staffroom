// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package by.psu.staffroom.web;

import by.psu.staffroom.service.api.PeriodService;
import by.psu.staffroom.web.PeriodsItemThymeleafController;

privileged aspect PeriodsItemThymeleafController_Roo_Controller {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private PeriodService PeriodsItemThymeleafController.periodService;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return PeriodService
     */
    public PeriodService PeriodsItemThymeleafController.getPeriodService() {
        return periodService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param periodService
     */
    public void PeriodsItemThymeleafController.setPeriodService(PeriodService periodService) {
        this.periodService = periodService;
    }
    
}