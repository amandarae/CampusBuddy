package ca.arae.campusbuddy;

import com.google.gson.annotations.SerializedName;

public class Activities {
	
	@SerializedName("id")
    private int id;

	@SerializedName("Campus")
	private String Campus;
	
	@SerializedName("Title")
	private String Title;
	
	@SerializedName("Description")
	private String Description;
	
	@SerializedName("Language")
	private String Language;
	
	@SerializedName("BuddyLanguage")
	private String BuddyLanguage;
	
	@SerializedName("Completed")
	private boolean Completed;
	
	public boolean isCompleted() {
		return Completed;
	}
	public void setCompleted(boolean completed) {
		this.Completed = completed;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCampus() {
		return Campus;
	}
	public void setCampus(String campus) {
		this.Campus = campus;
	}
	public String getTitle() {
		return Title;
	}
	public void setTitle(String title) {
		this.Title = title;
	}
	public String getDescription() {
		return Description;
	}
	public void setDescription(String description) {
		this.Description = description;
	}
	public String getLanguage() {
		return Language;
	}
	public void setLanguage(String language) {
		this.Language = language;
	}
	public String getBuddylanguage() {
		return BuddyLanguage;
	}
	public void setBuddylanguage(String buddylanguage) {
		this.BuddyLanguage = buddylanguage;
	}

}
