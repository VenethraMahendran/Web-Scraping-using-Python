package com.niit.DaoImpl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.Dao.UserDao;
import com.niit.model.User;

@Repository("UserDao")
public class UserDaoImpl implements UserDao {

	@Autowired 
	SessionFactory sessionFactory;
	@Transactional 
	public boolean addUser(User user) {
		try
		{
		sessionFactory.getCurrentSession().saveOrUpdate(user);
		return true;
		}
		catch(Exception e)
		{
			System.out.println("Exception arised"+e);
		return false;
		}
	}

}
