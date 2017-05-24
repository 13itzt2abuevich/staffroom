// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package by.psu.staffroom.web;

import by.psu.staffroom.web.LessonsItemThymeleafController;
import by.psu.staffroom.web.LessonsItemThymeleafLinkFactory;
import io.springlets.web.mvc.util.MethodLinkFactory;
import io.springlets.web.mvc.util.SpringletsMvcUriComponentsBuilder;
import java.util.Map;
import org.springframework.stereotype.Component;
import org.springframework.web.util.UriComponents;

privileged aspect LessonsItemThymeleafLinkFactory_Roo_LinkFactory {
    
    declare parents: LessonsItemThymeleafLinkFactory implements MethodLinkFactory<LessonsItemThymeleafController>;
    
    declare @type: LessonsItemThymeleafLinkFactory: @Component;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String LessonsItemThymeleafLinkFactory.SHOW = "show";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String LessonsItemThymeleafLinkFactory.SHOWINLINE = "showInline";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String LessonsItemThymeleafLinkFactory.EDITFORM = "editForm";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String LessonsItemThymeleafLinkFactory.UPDATE = "update";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String LessonsItemThymeleafLinkFactory.DELETE = "delete";
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<LessonsItemThymeleafController> LessonsItemThymeleafLinkFactory.getControllerClass() {
        return LessonsItemThymeleafController.class;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param methodName
     * @param parameters
     * @param pathVariables
     * @return UriComponents
     */
    public UriComponents LessonsItemThymeleafLinkFactory.toUri(String methodName, Object[] parameters, Map<String, Object> pathVariables) {
        if (methodName.equals(SHOW)) {
            return SpringletsMvcUriComponentsBuilder.fromMethodCall(SpringletsMvcUriComponentsBuilder.on(getControllerClass()).show(null, null)).buildAndExpand(pathVariables);
        }
        if (methodName.equals(SHOWINLINE)) {
            return SpringletsMvcUriComponentsBuilder.fromMethodCall(SpringletsMvcUriComponentsBuilder.on(getControllerClass()).showInline(null, null)).buildAndExpand(pathVariables);
        }
        if (methodName.equals(EDITFORM)) {
            return SpringletsMvcUriComponentsBuilder.fromMethodCall(SpringletsMvcUriComponentsBuilder.on(getControllerClass()).editForm(null, null)).buildAndExpand(pathVariables);
        }
        if (methodName.equals(UPDATE)) {
            return SpringletsMvcUriComponentsBuilder.fromMethodCall(SpringletsMvcUriComponentsBuilder.on(getControllerClass()).update(null, null, null, null, null)).buildAndExpand(pathVariables);
        }
        if (methodName.equals(DELETE)) {
            return SpringletsMvcUriComponentsBuilder.fromMethodCall(SpringletsMvcUriComponentsBuilder.on(getControllerClass()).delete(null)).buildAndExpand(pathVariables);
        }
        throw new IllegalArgumentException("Invalid method name: " + methodName);
    }
    
}