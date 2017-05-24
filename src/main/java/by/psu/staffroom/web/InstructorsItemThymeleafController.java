package by.psu.staffroom.web;
import by.psu.staffroom.domain.Instructor;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = InstructorsItemThymeleafController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = Instructor.class, type = ControllerType.ITEM)
@RooThymeleaf
public class InstructorsItemThymeleafController {
}
