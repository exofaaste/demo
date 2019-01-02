package com.example.demo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Logging {
	 @Id
	 @GeneratedValue(strategy=GenerationType.AUTO)
	 private String id;
	 private String message;
	 private String transactionId;
	 private String source;
	 private String destination;
	 
	 public String getId(){
		 return this.id;
	 }
	 public void setId(String id){
		 this.id=id;
	 }
	 
	 public String getMessage(){
		 return this.message;
	 }
	 public void setMessage(String message){
		 this.message = message;
	 }
	 
	 public String getTransactionId(){
		return this.transactionId;
	 }
	 public void setTransactionId(String transactionId){
		 this.transactionId = transactionId;
	 }
	 
	 public String getSource(){
		 return this.source;
	 }
	 public void setSource(String source){
		 this.source = source;
	 }
	 
	 public String getDestination(){
		 return this.destination;
	 }
	 public void setDestination(String destination){
		 this.destination = destination;
	 }
}