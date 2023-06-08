package mvc.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import org.springframework.stereotype.Repository;

import mvc.dto.Student;

@Repository
public class StudentDao {
	EntityManagerFactory factory = Persistence.createEntityManagerFactory("dev");
	EntityManager manager = factory.createEntityManager();
	EntityTransaction transaction = manager.getTransaction();

	public void save(Student student) {
		transaction.begin();
		manager.persist(student);
		transaction.commit();
	}

	public List<Student> fetchAll() {
		return manager.createQuery("select x from Student x").getResultList();
	}
	
	public List<Student> fetchByName(String name)
	{
		return manager.createQuery("select x from Student x where name=?1").setParameter(1, name).getResultList();
	}
}
