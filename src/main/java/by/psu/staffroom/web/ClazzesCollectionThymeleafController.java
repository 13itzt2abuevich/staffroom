package by.psu.staffroom.web;
import by.psu.staffroom.domain.Clazz;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = ClazzesCollectionThymeleafController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = Clazz.class, type = ControllerType.COLLECTION)
@RooThymeleaf
public class ClazzesCollectionThymeleafController {
}
