package ProjectPackage;
public class gp_register_bean 
{
    String email;

    
    String name;
    String course;
    String reason;
    String from;
    String to;
    String status;

    
gp_register_bean()
{
    
}
gp_register_bean(String status,String email,String name,String course,String reason,String from,String to)
{
    this.status=status;
    this.email=email;
    this.name=name;
    this.course=course;
    this.reason=reason;
    this.from=from;
    this.to=to;
}
public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCourse() {
        return course;
    }

    public void setCourse(String course) {
        this.course = course;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

    public String getFrom() {
        return from;
    }

    public void setFrom(String from) {
        this.from = from;
    }

    public String getTo() {
        return to;
    }

    public void setTo(String to) {
        this.to = to;
    }
}
