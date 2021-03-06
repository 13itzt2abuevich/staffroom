// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package by.psu.staffroom.repository;

import by.psu.staffroom.domain.Instructor;
import by.psu.staffroom.domain.QInstructor;
import by.psu.staffroom.repository.InstructorRepositoryCustom;
import by.psu.staffroom.repository.InstructorRepositoryImpl;
import com.querydsl.core.types.Path;
import com.querydsl.jpa.JPQLQuery;
import io.springlets.data.domain.GlobalSearch;
import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt.AttributeMappingBuilder;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.transaction.annotation.Transactional;

privileged aspect InstructorRepositoryImpl_Roo_Jpa_Repository_Impl {
    
    declare parents: InstructorRepositoryImpl implements InstructorRepositoryCustom;
    
    declare @type: InstructorRepositoryImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String InstructorRepositoryImpl.FIRST_NAME = "firstName";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String InstructorRepositoryImpl.LAST_NAME = "lastName";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String InstructorRepositoryImpl.PATRONYMIC = "patronymic";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String InstructorRepositoryImpl.ADDRESS = "address";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String InstructorRepositoryImpl.EMAIL = "email";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String InstructorRepositoryImpl.PHONE = "phone";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String InstructorRepositoryImpl.BIRTH_DAY = "birthDay";
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Instructor> InstructorRepositoryImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        
        QInstructor instructor = QInstructor.instructor;
        
        JPQLQuery<Instructor> query = from(instructor);
        
        Path<?>[] paths = new Path<?>[] {instructor.firstName,instructor.lastName,instructor.patronymic,instructor.address,instructor.email,instructor.phone,instructor.birthDay};        
        applyGlobalSearch(globalSearch, query, paths);
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(FIRST_NAME, instructor.firstName)
			.map(LAST_NAME, instructor.lastName)
			.map(PATRONYMIC, instructor.patronymic)
			.map(ADDRESS, instructor.address)
			.map(EMAIL, instructor.email)
			.map(PHONE, instructor.phone)
			.map(BIRTH_DAY, instructor.birthDay);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, instructor);
    }
    
}
