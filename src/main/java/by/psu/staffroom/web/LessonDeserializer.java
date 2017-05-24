package by.psu.staffroom.web;
import by.psu.staffroom.domain.Lesson;
import by.psu.staffroom.service.api.LessonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = LessonDeserializer
 TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = Lesson.class)
public class LessonDeserializer extends JsonObjectDeserializer<Lesson> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private LessonService lessonService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param lessonService
     * @param conversionService
     */
    @Autowired
    public LessonDeserializer(@Lazy LessonService lessonService, ConversionService conversionService) {
        this.lessonService = lessonService;
        this.conversionService = conversionService;
    }
}
