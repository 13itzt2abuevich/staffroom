package by.psu.staffroom.web;
import by.psu.staffroom.domain.Instructor;
import by.psu.staffroom.service.api.InstructorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = InstructorDeserializer
 TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = Instructor.class)
public class InstructorDeserializer extends JsonObjectDeserializer<Instructor> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private InstructorService instructorService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param instructorService
     * @param conversionService
     */
    @Autowired
    public InstructorDeserializer(@Lazy InstructorService instructorService, ConversionService conversionService) {
        this.instructorService = instructorService;
        this.conversionService = conversionService;
    }
}
