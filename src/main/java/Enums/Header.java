package Enums;

public class Header {
   public enum borderText{
        secure("Secure Digitised Processes"),
        rate("Rate starts at 10.99%"),
        collateral("No collateral");
        public String text;
        borderText(String text) {
          this.text=text;
        }
    }
    public enum option{
        consolidation("Debt Consolidation","consolidation"),
        improvement("Home Improvement","improvement"),
        appliances("Appliances and Electronics","appliances"),
        wedding("Wedding","wedding"),
        occasion("Event/Occasion","event"),
        holiday("Travel/Holdiay","travel"),
        medical("Medical Expenses","medical"),
        business("Business Investment","business"),
        vehicle("Vehicle Purchase","vehicle"),
        down("Down Payment","down"),
        security("Security/Rental Deposit","security"),
        invest("Invest","invest"),
        others("Others","others");
    public String name;
    public String value;
        option(String name, String value) {
            this.name=name;
            this.value=value;
        }
    }

}
