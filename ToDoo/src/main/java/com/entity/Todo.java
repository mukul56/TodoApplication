package com.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Todo {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int todoId;
	private String todoTitle;
	private String todoContent;
	private String todoDate;
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return this.getTodoTitle() + " : "+this.todoContent+" Date: "+this.todoDate;
	}

	public String getTodoTitle() {
		return todoTitle;
	}

	public void setTodoTitle(String todoTitle) {
		this.todoTitle = todoTitle;
	}

	public String getTodoContent() {
		return todoContent;
	}

	public void setTodoContent(String todoContent) {
		this.todoContent = todoContent;
	}

	public String getTodoDate() {
		return todoDate;
	}

	public void setTodoDate(Date date) {
		
		this.todoDate = date.toString();
	}

	public Todo(String todoTitle, String todoContent, Date todoDate) {
		super();
		this.todoTitle = todoTitle;
		this.todoContent = todoContent;
		this.todoDate = todoDate.toString();
	}
	
	public Todo() {
		super();
	}
	
	
	
	
}
