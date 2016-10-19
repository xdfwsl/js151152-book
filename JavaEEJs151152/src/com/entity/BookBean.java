package com.entity;

import java.io.Serializable;

public class BookBean implements Serializable {

	private static final long serialVersionUID = 1L;

	private String ISBN;

	private String title;

	private String copyright;

	private String imageFile;

	private int editionNumber, publisherID;

	private double price;

	// set ISBN number
	public void setISBN(String isbn) {
		ISBN = isbn;
	}

	// return ISBN number
	public String getISBN() {
		return ISBN;
	}

	// set book title
	public void setTitle(String bookTitle) {
		title = bookTitle;
	}

	// return book title
	public String getTitle() {
		return title;
	}

	// set copyright year
	public void setCopyright(String year) {
		copyright = year;
	}

	// return copyright year
	public String getCopyright() {
		return copyright;
	}

	// set file name of image representing product cover
	public void setImageFile(String fileName) {
		imageFile = fileName;
	}

	// return file name of image representing product cover
	public String getImageFile() {
		return imageFile;
	}

	// set edition number
	public void setEditionNumber(int edition) {
		editionNumber = edition;
	}

	// return edition number
	public int getEditionNumber() {
		return editionNumber;
	}

	// set publisher ID number
	public void setPublisherID(int id) {
		publisherID = id;
	}

	// return publisher ID number
	public int getPublisherID() {
		return publisherID;
	}

	// set price
	public void setPrice(double amount) {
		price = amount;
	}

	// return price
	public double getPrice() {
		return price;
	}
}
