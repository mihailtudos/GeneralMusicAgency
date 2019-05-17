
//variable declaration 
class Booking {
    private String userName, eventTitle, bookingDate, confirmed;
    private int firstClassTickets, secondClassTickets, corpTickets, id;
    double total;
    
    //booking object constructor
    public Booking(String userName, String eventTitle,int firstClassTickets, int secondClassTickets, int corpTickets, double total, String bookingDate){
        this.userName = userName;
        this.eventTitle = eventTitle;
        this.firstClassTickets = firstClassTickets;
        this.secondClassTickets = secondClassTickets;
        this.corpTickets = corpTickets;
        this.total = total;
        this.bookingDate = bookingDate;
    }
    //overwriten construtor that uses more parameters (used for booking confirmation)
    public Booking(int id, String userName, String eventTitle,int firstClassTickets, int secondClassTickets, int corpTickets, double total, String bookingDate, String confirmed){
        this.id = id;
        this.userName = userName;
        this.eventTitle = eventTitle;
        this.firstClassTickets = firstClassTickets;
        this.secondClassTickets = secondClassTickets;
        this.corpTickets = corpTickets;
        this.total = total;
        this.bookingDate = bookingDate;
        this.confirmed = confirmed;
    }
    
    //getters to build the constructor
    public int getID(){
        return id;
    }
    
    public String getUserName(){
        return userName;
    }
    
    public String getEventTitle(){
        return eventTitle;
    }
    
    public int getFirstClassTickets(){
        return firstClassTickets;
    }
    
    public int getSecondClassTickets(){
        return secondClassTickets;
    }
    
    public int getCorpTickets(){
        return corpTickets;
    }
    
    public double getTotal(){
        return total;
    }
    
    public String getBookingDate(){
        return bookingDate;
    }
    
    public String getConfirmed(){
        return confirmed;
    }
    
}
