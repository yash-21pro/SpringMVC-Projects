package productcurdapp.dao;



import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import productcurdapp.model.Product;

@Component
public class ProductDao {
	
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	
	//create
	@Transactional
	public void createProduct(Product product)
	{
		
		this.hibernateTemplate.saveOrUpdate(product);
	}

	//get all product
	public List<Product> getproduct()
	{
		List<Product> products = this.hibernateTemplate.loadAll(Product.class);
		return products;
	}
	
	
	//to delete product 
	@Transactional
	public void deleteProduct(int pid)
	{
		Product p =this.hibernateTemplate.load(Product.class, pid);
		this.hibernateTemplate.delete(p);
    }
	
	
	//to delete a single product
	public Product getproduct(int pid)
	{
		return this.hibernateTemplate.get(Product.class, pid);
	}
}
