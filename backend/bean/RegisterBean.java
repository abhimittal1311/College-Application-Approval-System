package ProjectPackage;

import java.io.FileNotFoundException;
import java.io.InputStream;

public class RegisterBean {
  String fname;
  String lname;
  String email;
  String contact;
  String address;
  String uname;
  String country;
  String date;
  String number;
  String marks_12;
  String marks_10;
  String course;
  String gender;
  String fathername;
  String mothername;
  String school;
  String ug_marks;

    public String getFathername() {
        return fathername;
    }

    public void setFathername(String fathername) {
        this.fathername = fathername;
    }

    public String getMothername() {
        return mothername;
    }

    public void setMothername(String mothername) {
        this.mothername = mothername;
    }

    public String getSchool() {
        return school;
    }

    public void setSchool(String school) {
        this.school = school;
    }

    public String getUg_marks() {
        return ug_marks;
    }

    public void setUg_marks(String ug_marks) {
        this.ug_marks = ug_marks;
    }
  InputStream fin;

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

   

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }



    public String getMarks_12() {
        return marks_12;
    }

    public void setMarks_12(String marks_12) {
        this.marks_12 = marks_12;
    }

    public String getMarks_10() {
        return marks_10;
    }

    public void setMarks_10(String marks_10) {
        this.marks_10 = marks_10;
    }

    public String getCourse() {
        return course;
    }

    public void setCourse(String course) {
        this.course = course;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public InputStream getFin() {
        return fin;
    }

    public void setFin(InputStream fin) throws FileNotFoundException{
        this.fin = fin;
    }
  
}
