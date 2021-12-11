package photofolio;
public class dbDTO{
    private int id;
    private String title;
    private String description;
    private String created;
    private String author_id;
    public dbDTO() {
    	
    }
    public dbDTO(int id, String title, String description, String created,
			String author_id) {
		super();
		this.id = id;
		this.title = title;
		this.description = description;
		this.created = created;
		this.author_id = author_id;

	}
    
	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getCreated() {
		return this.created;
	}

	public void setCreated(String created) {
		this.created = created;
	}

	public String getAuthor_id() {
		return this.author_id;
	}

	public void setAuthor_id(String author_id) {
		this.author_id = author_id;
	}

}