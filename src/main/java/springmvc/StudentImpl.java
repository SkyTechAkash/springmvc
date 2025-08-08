package springmvc;

import java.io.Serializable;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class StudentImpl implements StudentDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;

	@Override
	public int create(Student handle) {
		Serializable save = this.hibernateTemplate.save(handle);
		return (Integer) save;
	}

}
