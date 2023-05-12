package com.entities;

import java.util.Date;
import java.util.Random;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "note_details")
public class AddNotes {
	@Id
	private int noteId;
	private String title;
	@Column(length = 1500)
	private String content;
	private Date addedDate;

	public AddNotes(String title, String content, Date addedDate) {
		super();
		this.noteId = new Random().nextInt(1000000);
		this.title = title;
		this.content = content;
		this.addedDate = addedDate;
	}

	public int getNoteId() {
		return noteId;
	}

	public void setNoteId(int noteId) {
		this.noteId = noteId;
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

	public Date getAddedDate() {
		return addedDate;
	}

	public void setAddedDate(Date addedDate) {
		this.addedDate = addedDate;
	}

	public AddNotes() {
		super();
		// TODO Auto-generated constructor stub
	}

}
