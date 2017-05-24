package by.psu.staffroom.web;
import by.psu.staffroom.domain.Subject;
import by.psu.staffroom.service.api.SubjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = SubjectDeserializer
 TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = Subject.class)
public class SubjectDeserializer extends JsonObjectDeserializer<Subject> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private SubjectService subjectService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param subjectService
     * @param conversionService
     */
    @Autowired
    public SubjectDeserializer(@Lazy SubjectService subjectService, ConversionService conversionService) {
        this.subjectService = subjectService;
        this.conversionService = conversionService;
    }
}
