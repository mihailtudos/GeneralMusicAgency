/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author mihai
 */
class Booking {
    private String eventTitle, bookingDate;
    private int firstClassTickets, secondClassTickets, corpTickets;
    double total;
    
    //booking constructor
    public Booking(String eventTitle,int firstClassTickets, int secondClassTickets, int corpTickets, double total, String bookingDate){
        this.eventTitle = eventTitle;
        this.firstClassTickets = firstClassTickets;
        this.secondClassTickets = secondClassTickets;
        this.corpTickets = corpTickets;
        this.total = total;
        this.bookingDate = bookingDate;
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
    
}
