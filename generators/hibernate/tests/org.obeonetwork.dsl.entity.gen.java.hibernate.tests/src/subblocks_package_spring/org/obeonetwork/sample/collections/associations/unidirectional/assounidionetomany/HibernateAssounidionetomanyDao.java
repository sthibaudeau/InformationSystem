package org.obeonetwork.sample.collections.associations.unidirectional.assounidionetomany;

// Start of user code for import
import java.util.Collection;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import org.obeonetwork.fwk.dao.exception.DaoException;
import org.obeonetwork.sample.collections.associations.unidirectional.assounidionetomany.A;
import org.obeonetwork.sample.collections.associations.unidirectional.assounidionetomany.B;
import org.obeonetwork.sample.collections.associations.unidirectional.assounidionetomany.IAssounidionetomanyDao;

// End of user code for import

/**
 * Implementation of DAO interface IAssounidionetomanyDao based on the hibernate
 * persistence framework.
 * @see org.obeonetwork.sample.collections.associations.unidirectional.assounidionetomany.IAssounidionetomanyDao
 */
public class HibernateAssounidionetomanyDao extends HibernateDaoSupport implements IAssounidionetomanyDao {

	/**
     * The logger of this class.
     */
	private final static Log LOG = LogFactory.getLog(HibernateAssounidionetomanyDao.class);

	/**
	 * Create a new element
	 * @param a Element to create.
	 * @throws DaoException If an HibernateException occurs.
     * @see org.obeonetwork.sample.collections.associations.unidirectional.assounidionetomany.IADao.createA
     */
    public void createA(A a) throws DaoException {
		LOG.debug("Create a new A entity");
		try {
			getHibernateTemplate().save(a);
		} catch (HibernateException e) {
			throw new DaoException(e);
		}
	}

	/**
	 * Update an existing element
	 * @param a
     *            Element to update. If the element has an id,it may use it. 
	 * @throws DaoException If an HibernateException occurs.
     * @see org.obeonetwork.sample.collections.associations.unidirectional.assounidionetomany.IADao.updateA
     */
	public void updateA(A a) throws DaoException {
		LOG.debug("Update the entity A with id =" + a.getId());
		try {
			getHibernateTemplate().update(a);
		} catch (HibernateException e) {
			throw new DaoException(e);
		}
	}

	/**
	 * Delete an element
	 * Only id can be used to find which element must be deleted.
	 * @param a Element which will be deleted. 
	 * @throws DaoException If an HibernateException occurs.
     * @see org.obeonetwork.sample.collections.associations.unidirectional.assounidionetomany.IADao.deleteA
   	 */
	public void deleteA(A a) throws DaoException {
		LOG.debug("Delete the entity A with id =" + a.getId());
		try {
			getHibernateTemplate().delete(a);
		} catch (HibernateException e) {
			throw new DaoException(e);
		}
	}

	/**
	 * Find all elements.
	 * @return A list with all elements, without any filter. 
	 * @throws DaoException If an HibernateException occurs.
     * @see org.obeonetwork.sample.collections.associations.unidirectional.assounidionetomany.IADao.findAllAs
     */
	public Collection<A> findAllAs() throws DaoException {
		LOG.debug("Find all instance of A entity");
		try {
			Collection<A> resultList = getHibernateTemplate().loadAll(A.class);

			LOG.debug("Found " + resultList.size() + " instances of A entity");
			return resultList;
		} catch (HibernateException e) {
			throw new DaoException(e);
		}
	}

	/**
	 * Find one entity by its primary key.
     * @param id The PK of the entity
	 * @return The entity found. 
	 * @throws DaoException If an HibernateException occurs.
     * @see org.obeonetwork.sample.collections.associations.unidirectional.assounidionetomany.IADao.findAById
     */
	public A findAById(String id) throws DaoException {
		LOG.debug("Find one instance of A entity by id : " + id);
		try {
			return (A) getHibernateTemplate().load(A.class, id);
		} catch (HibernateException e) {
			throw new DaoException(e);
		}
	}
	

	/**
	 * Create a new element
	 * @param b Element to create.
	 * @throws DaoException If an HibernateException occurs.
     * @see org.obeonetwork.sample.collections.associations.unidirectional.assounidionetomany.IBDao.createB
     */
    public void createB(B b) throws DaoException {
		LOG.debug("Create a new B entity");
		try {
			getHibernateTemplate().save(b);
		} catch (HibernateException e) {
			throw new DaoException(e);
		}
	}

	/**
	 * Update an existing element
	 * @param b
     *            Element to update. If the element has an id,it may use it. 
	 * @throws DaoException If an HibernateException occurs.
     * @see org.obeonetwork.sample.collections.associations.unidirectional.assounidionetomany.IBDao.updateB
     */
	public void updateB(B b) throws DaoException {
		LOG.debug("Update the entity B with id =" + b.getId());
		try {
			getHibernateTemplate().update(b);
		} catch (HibernateException e) {
			throw new DaoException(e);
		}
	}

	/**
	 * Delete an element
	 * Only id can be used to find which element must be deleted.
	 * @param b Element which will be deleted. 
	 * @throws DaoException If an HibernateException occurs.
     * @see org.obeonetwork.sample.collections.associations.unidirectional.assounidionetomany.IBDao.deleteB
   	 */
	public void deleteB(B b) throws DaoException {
		LOG.debug("Delete the entity B with id =" + b.getId());
		try {
			getHibernateTemplate().delete(b);
		} catch (HibernateException e) {
			throw new DaoException(e);
		}
	}

	/**
	 * Find all elements.
	 * @return A list with all elements, without any filter. 
	 * @throws DaoException If an HibernateException occurs.
     * @see org.obeonetwork.sample.collections.associations.unidirectional.assounidionetomany.IBDao.findAllBs
     */
	public Collection<B> findAllBs() throws DaoException {
		LOG.debug("Find all instance of B entity");
		try {
			Collection<B> resultList = getHibernateTemplate().loadAll(B.class);

			LOG.debug("Found " + resultList.size() + " instances of B entity");
			return resultList;
		} catch (HibernateException e) {
			throw new DaoException(e);
		}
	}

	/**
	 * Find one entity by its primary key.
     * @param id The PK of the entity
	 * @return The entity found. 
	 * @throws DaoException If an HibernateException occurs.
     * @see org.obeonetwork.sample.collections.associations.unidirectional.assounidionetomany.IBDao.findBById
     */
	public B findBById(String id) throws DaoException {
		LOG.debug("Find one instance of B entity by id : " + id);
		try {
			return (B) getHibernateTemplate().load(B.class, id);
		} catch (HibernateException e) {
			throw new DaoException(e);
		}
	}
	

	//Start of user code
	//End of user code
}
