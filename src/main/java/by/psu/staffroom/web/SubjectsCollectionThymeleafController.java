package by.psu.staffroom.web;
import by.psu.staffroom.domain.Subject;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = SubjectsCollectionThymeleafController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = Subject.class, type = ControllerType.COLLECTION)
@RooThymeleaf
public class SubjectsCollectionThymeleafController {
}
