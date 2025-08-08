package springmvc;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StudentService {

	@Autowired
	private StudentDao studentDao;

	@Transactional
	public int createUser(Student handle) {
		int insert = studentDao.create(handle);
		return insert;
	}

}
