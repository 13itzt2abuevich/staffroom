package by.psu.staffroom.domain;
import org.springframework.roo.addon.javabean.annotations.RooEquals;
import org.springframework.roo.addon.javabean.annotations.RooJavaBean;
import org.springframework.roo.addon.javabean.annotations.RooToString;
import org.springframework.roo.addon.jpa.annotations.entity.RooJpaEntity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import org.springframework.roo.addon.jpa.annotations.entity.JpaRelationType;
import org.springframework.roo.addon.jpa.annotations.entity.RooJpaRelation;

/**
 * = Instructor
 TODO Auto-generated class documentation
 *
 */
@RooJavaBean
@RooToString
@RooJpaEntity(entityFormatExpression = "#{lastName} #{firstName} #{patronymic}")
@RooEquals(isJpaEntity = true)
public class Instructor {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Version
    private Integer version;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Size(min = 3, max = 32)
    private String firstName;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Size(min = 3, max = 30)
    private String lastName;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Size(min = 3, max = 30)
    private String patronymic;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Size(min = 1, max = 64)
    private String address;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Size(min = 6, max = 30)
    private String email;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Size(min = 6, max = 30)
    private String phone;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date birthDay;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @OneToMany(cascade = { javax.persistence.CascadeType.MERGE, javax.persistence.CascadeType.PERSIST }, fetch = FetchType.LAZY, mappedBy = "instructor")
    @RooJpaRelation(type = JpaRelationType.AGGREGATION)
    private Set<Lesson> lessons = new HashSet<Lesson>();
}
