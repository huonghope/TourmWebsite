package wepapps.mvc.MODEL;

public class Product {
	private int id;
	private int categoryID;
	private String title;
	private String content;
	private String price;
	private String image;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getCategoryID() {
		return categoryID;
	}
	public void setCategoryID(int categoryID) {
		this.categoryID = categoryID;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public Product() {
		super();
	}
	public Product(int id,int categoryID, String title, String content, String price, String image) {
		super();
		this.id = id;
		this.categoryID = categoryID;
		this.title = title;
		this.content = content;
		this.price = price;
		this.image = image;
	}
}
