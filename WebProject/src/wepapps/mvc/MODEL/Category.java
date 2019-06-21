package wepapps.mvc.MODEL;

public class Category {
	private int categoryID;
	private String categortName;
	public Category() {
		super();
	}
	public Category(int categoryID, String categortName) {
		super();
		this.categoryID = categoryID;
		this.categortName = categortName;
	}
	public int getCategoryID() {
		return categoryID;
	}
	public void setCategoryID(int categoryID) {
		this.categoryID = categoryID;
	}
	public String getCategortName() {
		return categortName;
	}
	public void setCategortName(String categortName) {
		this.categortName = categortName;
	}
}
