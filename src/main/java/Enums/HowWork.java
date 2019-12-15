package Enums;

import javax.swing.plaf.PanelUI;

public class HowWork {
public enum work{
    digitallyConnect("image/digitaly_connect.png","Digtally Connect","Digitally Connect borrowers\n" +
            "and investors"),
    documentation("image/documentation.png","Documentation","Documentation &\n" +
            "Disbursement of Loans"),
    Automated("image/automated.png","Automated","Automated monthly EMI\n" +
            "collection & transfer");
    public String image;
    public String name;
    public String message;

    work(String image, String name, String message) {
        this.image=image;
        this.name=name;
        this.message=message;

    }
}
}
