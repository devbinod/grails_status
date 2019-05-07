package np.com.pantbinod

public enum StatusList {
    DRAFT("DRAFT"),
    TRASH("TRASH"),
    PUBLISH("PUBLISH")

   public String value

   public StatusList(String value){
        this.value = value
    }

    public String getValue(){
        return this.value;
    }


}
