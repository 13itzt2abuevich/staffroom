package by.psu.staffroom.web;
import by.psu.staffroom.domain.Lesson;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = LessonsCollectionThymeleafController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = Lesson.class, type = ControllerType.COLLECTION)
@RooThymeleaf
public class LessonsCollectionThymeleafController {
}
