import java.io.Serializable;

public class Quote implements Serializable {
    private int id;
    private String author;
    private String content;
    private String topic;

    public Quote() {}

    /*
   Setters
    */
    public void setId(int id) {
        this.id = id;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public void setTopic(String topic) {
        this.topic = topic;
    }

    /*
    Getters
     */
    public int getId() {
        return id;
    }

    public String getAuthor() {
        return author;
    }

    public String getContent() {
        return content;
    }

    public String getTopic() {
        return topic;
    }
}
